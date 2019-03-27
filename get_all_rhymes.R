
get_all_rhymes <- function(word_vars, limit_n = 100){
  library(rhymer)
    return_words <- c(
      get_rhyme(word = word_vars,return_type = "vector",limit = limit_n, num_syl = NULL),
      get_sounds_like(word = word_vars,return_type = "vector",limit = limit_n, num_syl = NULL), 
      get_spelled_like(word = word_vars,return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars,code = "nry", return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars,code = "rhy", return_type = "vector",limit = limit_n),
      get_other_related(word = word_vars,code = "cns", return_type = "vector",limit = limit_n)
    )
  
  unique(return_words)
}

get_all_rhymes("balance")
get_all_rhymes("believe")
