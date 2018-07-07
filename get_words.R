
library(tidyverse)

# lexicon <- feather::read_feather("C:/Users/JoshH.TBDSAD/Documents/GitHub/amanuensis/lexicon.feather")

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
    return_words <- lexicon %>% filter_(filter_criteria) %>% droplevels() %>% select(word) %>% c()
  } else if (similarity == "cluster") {
    seed_clust <- lexicon %>% filter(word == seed_with) %>% select(k_group) %>% c() %>% .[[1]]
    return_words <- lexicon %>% filter(k_group == seed_clust) %>% droplevels() %>% select(word) %>% c()
  } else if (similarity == "regex"){
    return_words <- lexicon %>% filter(str_detect(word,seed_with) == T) %>% droplevels() %>% select(word) %>% c()
  } else if (similarity == "rhyme"){
    return_words <- c("Non-functional argument")
  } else if (similarity == "category"){
    return_words <- c("Non-functional argument")
  }
  return(return_words)
}

a <- get_words("vocal_proportion","sibilants",0.3) 
a <- get_words("letter_proportion","b",0.5)
a <- get_words("cluster","welter")
a <- get_words("regex","amb$|imb$|omb$")



