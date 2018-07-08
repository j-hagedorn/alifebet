
library(tidyverse)

lexicon <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/lexicon.feather")
rid <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/rid.feather")

get_words <- function(
  similarity = c("letter_proportion","vocal_proportion","cluster","rhyme","category","regex"),
  # The seed is different for different patterns: 
  # `letter_proportion` = letter, `vocal_proportion` = fricatives, etc., `cluster` = word to match, etc.
  seed_with,
  prop = NULL
){
  # Assumes a dataframe `lexicon` with the necessary columns
  if (similarity %in% c("letter_proportion","vocal_proportion")){
    filter_criteria <- lazyeval::interp(~x >= y, .values = list(x = as.name(seed_with), y = prop))
    return_words <- lexicon %>% filter_(filter_criteria) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "cluster") {
    seed_clust <- lexicon %>% filter(word == seed_with) %>% dplyr::select(k_group) %>% c() 
    return_words <- lexicon %>% filter(k_group == seed_clust[[1]]) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "regex"){
    return_words <- lexicon %>% filter(str_detect(word,seed_with) == T) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "rhyme"){
    return_words <- c("Non-functional argument")
  } else if (similarity == "category"){
    return_words <- c("Non-functional argument")
  }
  
  word_pattern <- paste0(similarity,"_",seed_with,"_",prop)
  return_list <- list(word_pattern = word_pattern, words = return_words)
  return(return_list)
}

