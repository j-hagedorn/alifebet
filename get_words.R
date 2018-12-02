
library(tidyverse)

lexicon <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/lexicon.feather")
rid <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/rid.feather")

get_words <- function(
  similarity = c("letter_proportion","vocal_proportion","cluster","rhyme","category","regex"),
  # The seed is different for different patterns: 
  # `letter_proportion` = letter, `vocal_proportion` = fricatives, etc., `cluster` = word to match, etc.
  seed_with,
  prop = NULL,
  pattern_alias = NULL, # if your regex is too long...
  min_len = 1,
  max_len = 20
){
  # Assumes a dataframe `lexicon` with the necessary columns
  df <- lexicon %>% filter(between(len,min_len,max_len))
  
  if (similarity %in% c("letter_proportion","vocal_proportion")){
    filter_criteria <- lazyeval::interp(~x >= y, .values = list(x = as.name(seed_with), y = prop))
    return_words <- df %>% filter_(filter_criteria) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "cluster") {
    seed_clust <- df %>% filter(word == seed_with) %>% dplyr::select(k_group) %>% c() 
    return_words <- df %>% filter(k_group == seed_clust[[1]]) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "regex"){
    return_words <- df %>% filter(str_detect(word,seed_with) == T) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "rhyme"){
    return_words <- c("Non-functional argument")
  } else if (similarity == "category"){
    return_words <- df %>%
      fuzzyjoin::regex_inner_join(rid %>% filter(level_3 == seed_with), by = c("word" = "regex_word")) %>% 
      mutate(word = as.character(word.x)) %>% dplyr::select(word) %>% c()
  }
  
  word_pattern <- 
    if(is.null(pattern_alias)){
      paste0(similarity,"_",seed_with,"_",prop)
    } else {pattern_alias}
  
  return_list <- list(word_pattern = word_pattern, words = return_words)
  return(return_list)
}

