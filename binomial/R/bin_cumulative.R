#' @title bin_cumulative
#' @description calculating the cumulative distribution
#' @param trials the number of trials
#' @param prob the probability of success per trial
#' @return a data.frame with two classes
#' @export
#' @examples
#' # binomial cumulative distribution
#' bin_cumulative(trials = 5, prob = 0.5)

bin_cumulative <- function(trials = 1, prob = 0.5) {
  p <- bin_probability(0:trials, trials, prob)
  c <- cumsum(p)
  res <- data.frame(
    success = 0:trials,
    probability = p,
    cumulative = c
  )
  class(res) <- c("bincum", "data.frame")
  res
}

#' @import graphics
#' @export
plot.bincum <- function(x, ...) {
  plot(x = x$success, y = x$cumulative, type = "o", xlab = "success", ylab = "probability")
}
