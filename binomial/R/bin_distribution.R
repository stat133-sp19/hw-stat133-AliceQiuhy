#' @title bin_distribution
#' @description calculating the probability distribution
#' @param trials the number of trials
#' @param prob the probability of success per trial
#' @return a data.frame with two classes: c("bindis", "data.frame")
#' @export
#' @examples
#' # binomial probability distribution
#' bin_distribution(trials = 5, prob = 0.5)

bin_distribution <- function(trials = 1, prob = 0.5) {
  p <- bin_probability(0:trials, trials, prob)
  res <- data.frame(
    success = 0:trials,
    probability = p
  )
  class(res) <- c("bindis", "data.frame")
  res
}

#' @export
plot.bindis <- function(x, ...) {
  barplot(x$probability, names.arg = x$success, xlab = "success", ylab = "probability")
}
