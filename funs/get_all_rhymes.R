
get_all_rhymes <- function(word_vars, limit_n = 100){
  library(rhymer)
  return_combo <- c()
  for(i in length(word_vars)){
    return_words <- c(
      get_rhyme(word = word_vars[i],return_type = "vector",limit = limit_n, num_syl = NULL),
      get_sounds_like(word = word_vars[i],return_type = "vector",limit = limit_n, num_syl = NULL), 
      get_spelled_like(word = word_vars[i],return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars[i],code = "nry", return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars[i],code = "rhy", return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars[i],code = "cns", return_type = "vector",limit = limit_n)
    )
    return_combo <- c(return_combo,unique(return_words))
  }
  sort(unique(return_combo))
}

# EXAMPLES
# get_all_rhymes(word_vars = c("balance","rinse","mints","tents"))
# get_all_rhymes("believe")
