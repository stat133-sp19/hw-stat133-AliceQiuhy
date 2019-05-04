#' @title bin_choose
#' @description calculating the number of combinations in which k successes can occur in n trials
#' @param n the number of trials
#' @param k the number of success
#' @return the number of combinations in which k successes can occur in n trials
#' @export
#' @examples
#' bin_choose(n = 5, k = 2)
#' bin_choose(5, 0)
#' bin_choose(5, 1:3)

bin_choose <- function(n = 1, k = 1) {
  if (!(is.numeric(n)) | !(is.numeric(k))) {
    stop("\n 'n' and 'k' need to be numeric number")
  }
  if (length(k) > 1) {
    if (any(k > n)) {
      stop("\n'k' cannot be greater than n")
    }
  }else{
    if (k > n) {
      stop("\n'k' cannot be greater than n")
    }
  }
  c <- factorial(n) / (factorial(k) * factorial(n - k))
  return(c)
}

