#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export

sing_day <- function(data, num, phrase_col){
  word <- english::ordinal(num)
  intro <- glue::glue("On the {word} day of Christmas, my true love gave to me,")
  #phrases <- data %>% pluck(phrase_col)
  phrases <- data %>% pull({{phrase_col}})
  last <- phrases[1]
  if (num == 1){
    lines <- phrases[num:1]
    return (glue::glue("{intro} \n {lines}"))

  }
  else {
    lines <- phrases[num:2]
    lines <- paste(lines, collapse = ", \n")
    lines <- str_replace(lines, " , ", ", ")
    lines <- str_replace(lines, " ,", ",")
    return (glue::glue("{intro} \n{lines}and \n{last}"))


  }

}



