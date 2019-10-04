library(tidyverse);library(DT); library(GO.db);library(tidytext)
library(hgu133plus2probe); library(hgu133plus2.db)

genome <- hgu133plus2probe 

get_genes <- function(go_ids){
  
  output <-
    hgu133plus2.db %>%
    select(
      keytype = "GO", 
      columns = c(
        "GO","ONTOLOGY","EVIDENCE","SYMBOL","GENENAME","MAP","PATH","PROBEID"
      ), 
      keys = go_ids
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
    distinct() 
  
  return(output)
  
}
