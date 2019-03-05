``` r
skin_genes <-
  get_genes(
    go_ids = c(
      `establishment of skin barrier` = "GO:0061436"#,
      # `skin development` = "GO:0043588",
      # `negative regulation of detection of mechanical stimulus involved in sensory perception of touch` = "GO:1905788",
      # `positive regulation of detection of mechanical stimulus involved in sensory perception of touch` = "GO:1905789",
      # `sensory perception of touch` = "GO:0050975",
      # `protein insertion into mitochondrial membrane involved in apoptotic signaling pathway` = "GO:0001844",
      # `cell outer membrane` = "GO:0009279"
    )
  )
```

    ## Warning: You have selected the following columns that can have a many to
    ##   one relationship with the primary key: GO, ONTOLOGY, EVIDENCE,
    ##   MAP, PATH . Because you have selected more than a few such
    ##   columns there is a risk that this selection may balloon up into
    ##   a very large result as the number of rows returned multiplies
    ##   accordingly. To experience smaller/more manageable results and
    ##   faster retrieval times, you might want to consider selecting
    ##   these columns separately.

    ## 'select()' returned 1:many mapping between keys and columns

    ## Warning: Column `PROBEID`/`Probe.Set.Name` joining factor and character
    ## vector, coercing into character vector

    ## Warning: Column `PROBEID`/`Probe.Set.Name` has different attributes on LHS
    ## and RHS of join

    ## Warning: Column `GO`/`go_id` joining factor and character vector, coercing
    ## into character vector

KDF1; Overproliferation can lead to hyperplasia or tumor formation while premature differentiation can result in a depletion of proliferating cells and organ failure. Maintaining this balance is especially important in tissues that undergo rapid turnover like skin however, despite recent advances, the genetic mechanisms that balance cell differentiation and proliferation are still unclear. In an unbiased genetic screen to identify genes affecting early development, we identified an essential regulator of the proliferation-differentiation balance in epidermal progenitor cells, the Keratinocyte differentiation factor 1 (Kdf1; 1810019J16Rik) gene. Kdf1 is expressed in epidermal cells from early stages of epidermis formation through adulthood. Specifically, Kdf1 is expressed both in epidermal progenitor cells where it acts to curb the rate of proliferation as well as in their progeny where it is required to block proliferation and promote differentiation. <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3841015/>

KRT16, The protein encoded by this gene is a member of the keratin gene family. The keratins are intermediate filament proteins responsible for the structural integrity of epithelial cells and are subdivided into cytokeratins and hair keratins. Most of the type I cytokeratins consist of acidic proteins which are arranged in pairs of heterotypic keratin chains and are clustered in a region of chromosome 17q12-q21. This keratin has been coexpressed with keratin 14 in a number of epithelial tissues, including esophagus, tongue, and hair follicles.

CLDN4, The protein encoded by this intronless gene belongs to the claudin family. Claudins are integral membrane proteins that are components of the epithelial cell tight junctions, which regulate movement of solutes and ions through the paracellular space. This protein is a high-affinity receptor for Clostridium perfringens enterotoxin (CPE) and may play a role in internal organ development and function during pre- and postnatal life.

SFN, This gene encodes a cell cycle checkpoint protein. The encoded protein binds to translation and initiation factors and functions as a regulator of mitotic translation. In response to DNA damage this protein plays a role in preventing DNA errors during mitosis

Print stanza patterns...

``` r
skin_patterns <- get_patterns(gene_id = "KDF1")
poem_pattern <- skin_patterns$tercet_amino$pattern
```

at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||cg|at|ta||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|cg|at||ta|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||cg|at|ta||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|cg|at||ta|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||cg|at|ta||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|cg|at||ta|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||cg|at|ta||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|cg|at||ta|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||cg|at|ta||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|cg|at||ta|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|cg||at|ta|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|ta|ta||at|at|at||ta|gc|ta||at|ta|ta||gc|ta|at||ta|ta|gc||gc|gc|gc||gc|gc|ta||gc|gc|ta||ta|at|at||at|ta|gc||ta|at|ta||ta|gc|ta||at|ta|ta||gc|gc|gc||gc|gc|gc||ta|gc|gc||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|ta|ta||at|at|at||ta|gc|ta||at|ta|ta||gc|ta|at||ta|ta|gc||gc|gc|gc||gc|gc|ta||gc|gc|ta||ta|at|at||at|ta|gc||ta|at|ta||ta|gc|ta||at|ta|ta||gc|gc|gc||gc|gc|gc||ta|gc|gc||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|ta|ta||at|at|at||ta|gc|ta||at|ta|ta||gc|ta|at||ta|ta|gc||gc|gc|gc||gc|gc|ta||gc|gc|ta||ta|at|at||at|ta|gc||ta|at|ta||ta|gc|ta||at|ta|ta||gc|gc|gc||gc|gc|gc||ta|gc|gc||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|ta|ta||at|at|at||ta|gc|ta||at|ta|ta||gc|ta|at||ta|ta|gc||gc|gc|gc||gc|gc|ta||gc|gc|ta||ta|at|at||at|ta|gc||ta|at|ta||ta|gc|ta||at|ta|ta||gc|gc|gc||gc|gc|gc||ta|gc|gc||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|ta|ta||at|at|at||ta|gc|ta||at|ta|ta||gc|ta|at||ta|ta|gc||gc|gc|gc||gc|gc|ta||gc|gc|ta||ta|at|at||at|ta|gc||ta|at|ta||ta|gc|ta||at|ta|ta||gc|gc|gc||gc|gc|gc||ta|gc|gc||ta|ta|at||at|at|ta||gc|ta|at||ta|ta|gc||ta|at|ta||ta|gc|gc||gc|gc|gc||gc|ta|gc||gc|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|at||gc|gc|at||gc|ta|ta||at|gc|gc||cg|at|ta||ta|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||at|gc|gc||at|gc|ta||ta|at|gc||gc|cg|at||ta|ta|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|at||gc|gc|at||gc|ta|ta||at|gc|gc||cg|at|ta||ta|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||at|gc|gc||at|gc|ta||ta|at|gc||gc|cg|at||ta|ta|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|at||gc|gc|at||gc|ta|ta||at|gc|gc||cg|at|ta||ta|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||at|gc|gc||at|gc|ta||ta|at|gc||gc|cg|at||ta|ta|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|at||gc|gc|at||gc|ta|ta||at|gc|gc||cg|at|ta||ta|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||at|gc|gc||at|gc|ta||ta|at|gc||gc|cg|at||ta|ta|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|at||gc|gc|at||gc|ta|ta||at|gc|gc||cg|at|ta||ta|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||at|gc|gc||at|gc|ta||ta|at|gc||gc|cg|at||ta|ta|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|at|gc||gc|at|gc||ta|ta|at||gc|gc|cg||at|ta|ta||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||gc|at|cg||cg|at|gc||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|gc|at||cg|cg|at||gc|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||gc|at|cg||cg|at|gc||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|gc|at||cg|cg|at||gc|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||gc|at|cg||cg|at|gc||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|gc|at||cg|cg|at||gc|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||gc|at|cg||cg|at|gc||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|gc|at||cg|cg|at||gc|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||gc|at|cg||cg|at|gc||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|gc|at||cg|cg|at||gc|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|gc||at|cg|cg||at|gc|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||cg|ta|gc||at|at|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|cg|ta||gc|at|at||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||cg|ta|gc||at|at|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|cg|ta||gc|at|at||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||cg|ta|gc||at|at|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|cg|ta||gc|at|at||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||cg|ta|gc||at|at|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|cg|ta||gc|at|at||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||cg|ta|gc||at|at|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|cg|ta||gc|at|at||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|cg||ta|gc|at||at|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|at||ta|cg|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||at|ta|cg||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|at||ta|cg|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||at|ta|cg||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|at||ta|cg|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||at|ta|cg||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|at||ta|cg|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||at|ta|cg||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|ta||cg|at|cg||ta|gc|gc||gc|cg|cg||at|ta|gc||gc|gc|at||ta|cg|ta||at|cg|at||ta|cg|ta||ta|cg|at||cg|ta|gc||gc|gc|cg||cg|at|ta||gc|gc|gc||at|ta|cg||ta|at|cg||at|ta|cg||ta|ta|cg||at|cg|ta||gc|gc|gc||cg|cg|at||ta|gc|gc||gc|at|ta||cg|ta|at||cg|at|ta||cg|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|cg|at||ta|gc|gc||at|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|cg||at|ta|gc||gc|at|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|cg|at||ta|gc|gc||at|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|cg||at|ta|gc||gc|at|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|cg|at||ta|gc|gc||at|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|cg||at|ta|gc||gc|at|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|cg|at||ta|gc|gc||at|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|cg||at|ta|gc||gc|at|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|cg|at||ta|gc|gc||at|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|cg||at|ta|gc||gc|at|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||cg|at|ta||gc|gc|at||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|at||at|cg|cg||cg|cg|ta||gc|ta|gc||gc|gc|at||gc|at|gc||gc|cg|ta||ta|at|gc||at|cg|gc||at|at|cg||cg|cg|cg||ta|gc|ta||gc|gc|gc||at|gc|at||gc|gc|cg||ta|ta|at||gc|at|cg||gc|at|at||cg|cg|cg||cg|ta|gc||ta|gc|gc||gc|at|gc||at|gc|gc||cg|ta|ta||at|gc|at||cg|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|gc||cg|ta|cg||at|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||gc|cg|ta||cg|at|ta||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|gc||cg|ta|cg||at|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||gc|cg|ta||cg|at|ta||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|gc||cg|ta|cg||at|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||gc|cg|ta||cg|at|ta||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|gc||cg|ta|cg||at|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||gc|cg|ta||cg|at|ta||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta|gc||cg|ta|cg||at|ta|gc||gc|ta|cg||ta|ta|cg||at|gc|gc||ta|gc|gc||cg|cg|ta||gc|at|ta||gc|cg|ta||cg|at|ta||gc|gc|ta||cg|ta|ta||cg|at|gc||gc|ta|gc||gc|cg|cg||ta|gc|at||ta|gc|cg||ta|cg|at||ta|gc|gc||ta|cg|ta||ta|cg|at||gc|gc|ta||gc|gc|cg||cg|ta|gc||at|ta

Select word similarity patterns...

``` r
a_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(ough$|to$|ew$|oo$|ue$).*$",
  pattern_alias = "through_rhyme",
  min_len = 3, max_len = 9, is_common = T
)
t_words <- get_words(
  "regex",
  # Words with same start and end letter
  "^([a-z]).*\\1$",
  pattern_alias = "circle",
  min_len = 5, max_len = 11, is_common = T #, stem = T
)
c_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(nst$|ends$|ens$|end$|en$).*$",
  pattern_alias = "against_rhyme",
  min_len = 3, max_len = 9, is_common = T
)
g_words <- get_words(
  "regex",
  # Words with only one kind of vowel 
  "^((?![eiouy]).)*$|^((?![aiouy]).)*$|^((?![aeouy]).)*$|^((?![aeiuy]).)*$|^((?![aeioy]).)*$|^((?![aeiou]).)*$",
  pattern_alias = "single_vowel",
  min_len = 5, max_len = 11, is_common = T #, stem = T
)
```

------------------------------------------------------------------------

Legend
======

*Below are the first 100 lines of the poem's pattern, labelled:*

    ##   
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## |

------------------------------------------------------------------------

Word options
============

A
-

The pattern is: through\_rhyme

Words include:

although, alto, andrew, antique, argue, auto, avenue, blue, borough, boutique, catalogue, cheque, colleague, continue, crew, dialogue, drew, due, enough, few, foo, goto, grew, hebrew, interview, into, issue, knew, league, matthew, nato, new, onto, photo, potato, prague, preview, puerto, pursue, que, queue, renew, rescue, revenue, review, rough, screw, sue, tattoo, technique, thorough, though, through, tissue, tomato, tongue, too, toronto, tough, true, tue, value, venue, view, virtue, yahoo, zoo

------------------------------------------------------------------------

T
-

The pattern is: circle

Words include:

africa, agenda, alabama, alaska, albania, alberta, alexandria, algebra, algeria, alpha, america, andorra, angola, antarctica, antenna, arabia, arena, argentina, arizona, armenia, asthma, atlanta, aurora, australia, austria, cadillac, cardiac, catholic, celtic, ceramic, chronic, civic, classic, clinic, comic, cosmetic, cubic, damaged, dated, david, decided, declared, declined, decreased, dedicated, deemed, defend, deferred, defined, delayed, deleted, delivered, demand, denied, depend, derived, described, designated, designed, desired, destroyed, detailed, detected, determined, deutschland, developed, devoted, diamond, directed, disabled, discounted, discovered, discussed, dispatched, displayed, distributed, disturbed, divided, dividend, documented, donald, donated, download, downloaded, dressed, dried, dropped, eagle, earthquake, eclipse, effective, eligible, eliminate, elite, elsewhere, empire, employee, enable, enclosure, encourage, engage, engine, enhance, enlarge, ensemble, ensure, enterprise, entire, entrance, envelope, enzyme, episode, escape, essence, estate, estimate, eugene, europe, evaluate, evanescence, everyone, everywhere, evidence, examine, example, excellence, excessive, exchange, exclude, exclusive, excuse, execute, executive, exercise, existence, expenditure, expense, expensive, experience, expertise, explore, exposure, extensive, extreme, gambling, gaming, gardening, gathering, generating, getting, giving, going, governing, greeting, growing, health, heath, iraqi, israeli, knock, kodak, label, legal, level, liberal, liverpool, local, logical, mainstream, maximum, mechanism, medium, metabolism, millennium, minimum, modem, momentum, museum, muslim, nation, navigation, negotiation, nelson, newton, nikon, nitrogen, nomination, norman, northern, norwegian, notion, nutrition, nylon, ontario, partnership, philip, pickup, radar, ranger, rather, reader, realtor, receiver, receptor, recorder, recover, refer, register, registrar, regular, remainder, remember, reminder, render, repair, reporter, researcher, reseller, reservoir, retailer, reviewer, rider, river, rochester, roger, roller, roster, router, rover, rubber, runner, saints, salaries, sales, samples, saves, savings, scales, scanners, scenarios, scenes, schedules, schemes, scholars, schools, sciences, scientists, scores, screens, scripts, searches, seasons, seats, seconds, secrets, sections, sectors, securities, seeds, seekers, seeks, seems, segments, selections, sellers, sells, seminars, senators, sends, seniors, sensors, sentences, sequences, series, serious, servers, serves, services, sessions, settings, shades, shadows, shapes, shares, sheets, shipments, ships, shirts, shoes, shoppers, shops, shortcuts, shorts, shots, showers, shows, sides, siemens, signals, signatures, signs, simulations, singles, sisters, sites, situations, sizes, skills, skins, skirts, sleeps, slides, slots, societies, socks, soldiers, solutions, sometimes, songs, sorts, souls, sounds, sources, spaces, speakers, speaks, spears, specialists, specials, specialties, species, specifics, specifies, specs, speeches, speeds, spies, spirits, sponsors, sports, spots, springs, stages, stainless, stamps, standards, standings, stands, stars, starts, statements, states, stations, statistics, stats, status, statutes, stays, steps, stickers, sticks, stockings, stocks, stones, stops, stores, stories, strategies, streams, streets, strengths, stress, strikes, strings, stripes, strips, structures, students, studies, studios, styles, stylus, subjects, submissions, subscribers, substances, success, suggestions, suggests, suites, suits, summaries, sunglasses, supervisors, supplements, suppliers, supplies, supporters, supports, surfaces, surgeons, surplus, surveys, survivors, swingers, swiss, switches, symbols, symptoms, synopsis, synthesis, systems, tablet, talent, target, taught, tenant, terrorist, testament, theft, therapist, thought, threat, throat, throughout, ticket, tight, toilet, tonight, toolkit, tourist, tournament, tract, transcript, transit, transmit, transparent, transport, treat, treatment, trout, trust, twist, willow, window, xerox, yearly, yesterday, angela, newman, nathan

------------------------------------------------------------------------

C
-

The pattern is: against\_rhyme

Words include:

aberdeen, against, alien, allen, amend, athens, attend, been, ben, bend, between, blend, broken, burden, carmen, chicken, children, chosen, citizen, citizens, cohen, const, defend, den, depend, depends, dividend, dozen, dozens, driven, eden, eleven, ellen, end, ends, even, extend, extends, fallen, fifteen, forbidden, forgotten, friend, friends, frozen, garden, gardens, gen, given, glen, golden, gotten, green, halloween, happen, happens, haven, heaven, helen, hidden, hydrogen, intend, karen, keen, ken, kitchen, laden, legend, legends, lens, listen, maiden, men, mens, nitrogen, often, open, opens, oven, oxygen, pen, pens, proven, queen, queens, recommend, screen, screens, seen, sen, send, sends, seven, siemens, spend, spoken, stephen, steven, stolen, sudden, sweden, taken, teen, teens, ten, tend, then, token, trend, trends, warren, weekend, weekends, when, women, wooden, written, yemen, yen, zen, childrens, len, owen

------------------------------------------------------------------------

G
-

The pattern is: single\_vowel

Words include:

abstract, alarm, alpha, apart, atlas, attach, attack, attract, avatar, award, better, between, bidding, binding, blessed, blood, bloom, books, boost, booth, boots, bottom, breed, bringing, cement, center, centered, clicking, clinic, clinics, colors, combo, comfort, common, concord, control, crisis, criticism, critics, december, decent, deemed, deeper, defects, defence, defend, defense, deferred, degree, delete, dense, depend, dependence, dependent, desert, deserve, detect, digit, dining, distinct, district, diving, doctor, donor, doors, downtown, drama, dressed, drilling, drinking, driving, edges, effect, effects, elder, elect, elected, element, elsewhere, embedded, ended, endless, ensemble, enter, entered, essence, event, exceed, excel, excellence, except, excerpt, excess, exempt, expect, expected, expense, expert, express, extend, extended, extent, extreme, facts, falls, farms, fatal, feeds, feels, fence, fever, fewer, fifth, fight, fighting, filing, filling, films, finding, findings, finds, finish, finishing, finnish, firms, first, fishing, fitting, flags, flash, fleece, fleet, flesh, flight, flights, flood, floor, floors, flows, flush, folks, follow, follows, fonts, foods, forgot, forms, forth, frank, freeze, french, fresh, front, frost, funds, gamma, gender, genes, genre, genres, gentle, ghana, ghost, gifts, girls, giving, glass, goods, graham, grammar, grams, grand, grant, grants, graph, graphs, grass, greece, greek, green, griffin, grill, gross, grown, grows, growth, handbags, hands, harvard, hazard, hazards, hebrew, helen, helmet, helped, helps, hence, herbs, herself, highlight, highlights, highs, hiking, hills, hints, hiring, hitting, holds, hollow, honor, honors, horror, hosts, insight, insights, irish, japan, jesse, jewel, johns, johnson, kansas, karma, keeps, kernel, killing, kills, kinds, kings, kissing, knight, knights, knitting, knock, known, knows, lambda, lamps, lands, leeds, legend, legends, lender, lenders, length, lenses, lesser, letter, letters, level, levels, licking, light, lighting, lightning, lights, limit, limiting, limits, linking, links, listing, listings, lists, living, locks, logos, london, looks, loops, lunch, madagascar, malta, manga, manhattan, march, marks, marsh, marshall, martha, match, meets, member, members, merge, merger, messenger, meter, meters, metres, midnight, might, mills, minds, mining, missing, mississippi, mixing, month, months, morocco, moscow, motor, motors, naval, needed, needle, needs, nerve, nested, never, newer, newest, newsletter, newsletters, night, nights, norfolk, north, oxford, packs, panama, pants, paragraph, paragraphs, parks, parts, pasta, patch, paths, peers, pepper, percent, perfect, peter, philip, photo, photos, picking, picks, picnic, pills, pitch, plans, plant, plants, plasma, plaza, pledge, plots, polls, pools, ports, posts, prefer, preference, preferences, preferred, prefers, presence, present, presented, presents, preserve, press, pressed, prevent, pricing, print, printing, prints, promo, prompt, proof, protocol, protocols, pumps, punch, qatar, racks, radar, ralph, ranch, ranks, rebel, recent, redeem, refer, reference, referenced, references, referred, refers, reflect, reflected, reflects, refresh, reject, rejected, remember, remembered, render, rendered, renew, represent, represented, represents, reseller, reserve, reserved, reserves, reset, respect, respected, revenge, reverse, rhythm, riding, right, rights, rings, rising, risks, robot, robots, rocks, rolls, rooms, roots, salad, samba, sandra, santa, sarah, savannah, scene, scenes, scheme, schemes, school, schools, scoop, scott, scratch, screen, screens, screw, script, scripting, scripts, scroll, secret, secrets, seeds, seeker, seekers, seeks, seemed, seems, segment, segments, select, selected, seller, sellers, sells, semester, sender, sends, sense, sentence, sentences, september, serve, served, server, servers, serves, settle, settled, settlement, seven, seventh, severe, shaft, shall, shark, sharp, sheep, sheer, sheet, sheets, shelf, shell, shelter, shepherd, shift, shipping, ships, shirt, shirts, shock, shoot, shops, short, shorts, shots, shown, shows, sight, signing, signs, singh, singing, sitting, sixth, skiing, skill, skills, skins, skirt, skirts, sleep, sleeps, sleeve, slight, slots, small, smart, smell, smith, smooth, socks, solomon, songs, sorts, spank, specs, speech, speeches, speed, speeds, spell, spencer, spend, spent, sperm, sphere, spirit, spirits, split, sponsor, sponsors, sport, sports, spots, spring, springs, sprint, stack, staff, stamp, stamps, stand, standard, standards, stands, stars, start, starts, stats, steel, stephen, steps, steve, steven, stick, sticks, still, stock, stockholm, stocks, stood, stops, storm, strand, strap, street, streets, strength, strengthen, strengths, stress, stretch, strict, striking, string, strings, strip, strips, strong, struck, struct, stuck, stuff, surplus, sweden, sweet, swift, swimming, swing, swiss, switch, switching, sword, talks, tampa, tanks, tasks, teens, teeth, tells, temple, tender, tennessee, terms, tested, tests, texts, thank, thanks, thats, theft, theme, themes, themselves, there, these, thick, thing, things, think, thinking, thinks, third, thompson, thong, thongs, three, throw, thrown, throws, thumb, thumbs, tight, timing, tomorrow, toolbox, tools, tooth, toronto, towns, track, tracks, tract, trans, trash, trees, trend, trends, trick, tricks, trips, troops, truck, trucks, trunk, trust, trusts, truth, turns, twelve, twins, twist, velvet, verde, verse, vertex, vessel, vessels, victim, victims, viking, virgin, visit, visiting, visits, walks, walls, wanna, wants, warcraft, warrant, watch, watts, webster, weekend, weekends, weeks, wellness, wells, welsh, western, whats, wheel, wheels, whenever, where, wherever, whether, which, whilst, width, willing, winds, wings, winning, wiring, wishing, witch, within, woods, words, works, workshop, workshops, world, worlds, worst, worth, wright, wrist, writing, writings, wrong, nathan, bennett, essex, perth
