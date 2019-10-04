library(tidyverse);library(DT); library(GO.db);library(tidytext)

go_tbl <- toTable(GOTERM)[-c(1)]

search_go <- function(search_string){
  output <-
    go_tbl %>%
    dplyr::filter(str_detect(Term,search_string)) %>%
    # Use line below if querying GO.db directly
    # unlist(Term(GOTERM))[grep(pattern = search_string, x = unlist(Term(GOTERM)))] %>%
    # dplyr::as_tibble() %>% dplyr::mutate(GOID = row.names(.)) %>% dplyr::select(GOID, GOTERM = value)
    dplyr::select(go_id,Term,Definition,Ontology) %>%
    dplyr::distinct()
  
  return(output)
}
