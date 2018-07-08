library(tidyverse);library(DT); library(GO.db);library(tidytext)
library(hgu133plus2probe); library(hgu133plus2.db)

get_patterns <- function(gene_id){
  
  # Filter gene data based on selection
  gene_df <-
    hgu133plus2.db %>%
    select(
      keytype = "SYMBOL", 
      columns = c(
        "GO","ONTOLOGY","EVIDENCE","SYMBOL","GENENAME","MAP","PATH","PROBEID"
      ), 
      keys = gene_id
    ) %>%
    mutate(
      EVIDENCE_TYPE = recode(
        EVIDENCE,
        `IMP` = "inferred from mutant phenotype",
        `IGI` = "inferred from genetic interaction",
        `IPI` = "inferred from physical interaction",
        `ISS` = "inferred from sequence similarity",
        `IDA` = "inferred from direct assay",
        `IEP` = "inferred from expression pattern",
        `IEA` = "inferred from electronic annotation",
        `TAS` = "traceable author statement",
        `NAS` = "non-traceable author statement",
        `ND` = "no biological data available",
        `IC` = "inferred by curator",
        `IBA` = "inferred from biological aspect of ancestor"
      )
    ) %>%
    mutate_if(
      .predicate = is.character,
      .funs = funs(as_factor)
    ) %>%
    # mutate(
    #   EVIDENCE = fct_relevel(EVIDENCE, c())
    # ) %>%
    inner_join(genome, by = c("PROBEID" = "Probe.Set.Name")) %>%
    inner_join(go_tbl[c(1:2)], by = c("GO" = "go_id")) %>%
    dplyr::select(GENENAME,SYMBOL,sequence,MAP,PATH,PROBEID,x,y,GO,GOTERM = Term,ONTOLOGY,EVIDENCE,EVIDENCE_TYPE) %>%
    distinct() %>%
    # Arrange by position
    arrange(x) %>%
    dplyr::select(sequence) %>%
    unnest_tokens(
      nucleotide,
      sequence,
      token =  "character_shingles",
      n = 1
    ) %>%
    # Define the other half of the base pair
    mutate(
      pair = recode(
        nucleotide,
        `a` = "t",
        `t` = "a",
        `c` = "g",
        `g` = "c"
      )
    )
  
  # Define patterns
  tercet_purines <-
    gene_df %>%
    mutate(
      # Duplicate if purines
      nucleotide = recode(nucleotide, `a` = "a|a",`g` = "g|g"),
      pair = recode(pair, `a` = "a|a",`g` = "g|g"),
      base_pair = paste0(nucleotide,"|",pair)
    ) %>%
    summarize(pattern = base::paste(base_pair,collapse = "||")) %>%
    c()
  
  tercet_amino <- 
    gene_df %>%
    mutate(
      base_pair = paste0(nucleotide,pair)
    ) %>%
    summarize(pattern = base::paste(base_pair,collapse = "|")) %>%
    # Add new | for every tercet break
    mutate(pattern = gsub('(.{9})', '\\1|', pattern)) %>%
    c()
  
  couplet_amino <-
    gene_df %>%
    mutate(
      row = row_number(),
      codon = cut(row, nrow(.) %/% 3, labels=FALSE)
    ) %>%
    group_by(codon) %>%
    summarize(
      nucleotide = base::paste(nucleotide,collapse = ""),
      pair = base::paste(pair,collapse = "")
    ) %>%
    mutate(
      pattern = base::paste0(nucleotide,"|",pair)
    ) %>%
    summarize(pattern = base::paste(pattern,collapse = "||")) %>%
    c()
  
  patterns <- 
    list(
      `gene_df` = gene_df,
      `tercet_purines` = tercet_purines,
      `tercet_amino` = tercet_amino,
      `couplet_amino` = couplet_amino
    )
  
  return(patterns)
  
}
