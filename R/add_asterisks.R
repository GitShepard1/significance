#' @title signif
#'
#' @description adds the asterisks for a vector of p values
#' @param vector vector of p.values
#' @import tidyverse
#' @import purrr
#' @import DBI
#' @import stringr
#' @import dplyr
#' @import tibble
#' @import tidyr
#' @import magrittr
#' @export add_asterisks
#' @examples \dontrun{
#' hello()
#' }
add_asterisks = function(pvector){

  map(pvector, function(p){

    if (p < 0.0001){

      "****"

    } else if (p < 0.001){

      "***"

    } else if (p < 0.01){

      "**"

    } else if (p < 0.05){

      "*"

    } else {

      "ns"

    }


  }) %>%
    unlist()

}
