#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export

pluralize_gift <- function(gift){
  if(str_detect(gift, "oose") == TRUE) {
    gift <- str_replace(gift, "oose", "eese")
    return(gift)
  }
  else if (str_detect(gift, "y$") == TRUE) {
    gift <- str_replace(gift, "y$", "ies")
    return(gift)
  }
  else {
    gift <- paste(gift,"s", sep = "")
    return (gift)
  }
}




