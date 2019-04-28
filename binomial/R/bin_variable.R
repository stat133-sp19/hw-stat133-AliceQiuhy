#' @title bin_variable
#' @description showing the information about variables
#' @param trials the number of trials
#' @param prob the probability of success per trial
#' @return a list with class "binvar
#' @export
#' @examples
#' # binomial random variable
#' bin_variable(trials = 10, p = 0.3)

bin_variable <- function(trials = 1, prob = 0.5) {
  if(!(check_trials(trials))) {
    stop("\n invalid 'trials' value")
  }
  if(!(check_prob(prob))) {
    stop("\n invalid 'prob' value")
  }
  res <- list(trials = trials, prob = prob)
  class(res) <- "binvar"
  res
}

#' @export
print.binvar <- function(x, ...) {
  cat('"Binomial variable"\n')
  cat('\n')
  cat('Parameters\n')
  cat(sprintf("- number of trials: %s", x$trials), "\n")
  cat(sprintf("- prob of success : %s", x$prob), "\n")
  invisible(x)
}

#' @export
summary.binvar <- function(object, ...) {
  res <- list(trials = object$trials,
              prob = object$prob,
              mean = aux_mean(object$trials, object$prob),
              variance = aux_variance(object$trials, object$prob),
              mode = aux_mode(object$trials, object$prob),
              skewness = round(aux_skewness(object$trials, object$prob),7),
              kurtosis = round(aux_kurtosis(object$trials, object$prob),7))
  class(res) <- "summary.binvar"
  res
}

#' @export
print.summary.binvar <- function(x, ...) {
  cat('"Binomial variable"\n')
  cat('\n')
  cat('Parameters\n')
  cat(sprintf("- number of trials: %s", x$trials), "\n")
  cat(sprintf("- prob of success : %s", x$prob), "\n")
  cat('\n')
  cat('Measures\n')
  cat(sprintf("- mean    : %s", x$mean), "\n")
  cat(sprintf("- variance: %s", x$variance), "\n")
  cat(sprintf("- mode    : %s", x$mode), "\n")
  cat(sprintf("- skewness: %s", x$skewness), "\n")
  cat(sprintf("- kurtosis: %s", x$kurtosis), "\n")
  invisible(x)
}
