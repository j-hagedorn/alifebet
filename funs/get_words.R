
library(tidyverse); library(magrittr); library(hunspell)

lexicon <- feather::read_feather("C:/Users/joshh/Documents/GitHub/amanuensis/lexicon.feather")
common <- 
  readLines("https://raw.githubusercontent.com/first20hours/google-10000-english/master/google-10000-english-no-swears.txt") %>%
  as_tibble() %>% mutate(common = T) 

# Join logical vec of common vars
lexicon %<>% left_join(common, by = c("word" = "value")) %>% mutate(common = common == T & is.na(common) == F)

rid <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/rid.feather")

source("../../funs/get_all_rhymes.R")

get_words <- function(
  similarity = c("letter_proportion","vocal_proportion","cluster","rhyme","category","regex"),
  # The seed is different for different patterns: 
  # `letter_proportion` = letter, `vocal_proportion` = fricatives, etc., `cluster` = word to match, etc.
  seed_with,
  prop = NULL,
  pattern_alias = NULL, # if your regex is too long...
  min_len = 1,
  max_len = 20,
  is_common = TRUE,
  stem = FALSE
){
  # Assumes a dataframe `lexicon` with the necessary columns
  df <- lexicon %>% filter(between(len,min_len,max_len)) 
  
  if (is_common == T){ df %<>% filter(common == T)} else {df <- df}
  
  if (similarity %in% c("letter_proportion","vocal_proportion")){
    filter_criteria <- lazyeval::interp(~x >= y, .values = list(x = as.name(seed_with), y = prop))
    return_words <- df %>% filter_(filter_criteria) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "cluster") {
    seed_clust <- df %>% filter(word == seed_with) %>% dplyr::select(k_group) %>% c() 
    return_words <- df %>% filter(k_group == seed_clust[[1]]) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "regex"){
    return_words <- df %>% filter(str_detect(word,seed_with) == T) %>% droplevels() %>% dplyr::select(word) %>% c()
  } else if (similarity == "rhyme"){
    return_words <- get_all_rhymes(word_vars = seed_with)
  } else if (similarity == "category"){
    return_words <- df %>%
      fuzzyjoin::regex_inner_join(rid %>% filter(level_3 == seed_with), by = c("word" = "regex_word")) %>% 
      mutate(word = as.character(word.x)) %>% dplyr::select(word) %>% c()
  }
  
  if (stem == T){
    return_words <- hunspell_stem(as.character(return_words)) %>% unique() %>% unlist()
  } else {return_words <- return_words}
  
  word_pattern <- 
    if(is.null(pattern_alias)){
      paste0(similarity,"_",seed_with,"_",prop)
    } else {pattern_alias}
  
  return_list <- list(word_pattern = word_pattern, words = return_words)
  return(return_list)
}

