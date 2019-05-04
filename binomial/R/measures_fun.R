# Functions of measures
#' @title bin_mean
#' @description calculates the mean
#' @param trials trials
#' @param prob probability
#' @return mean
#' @export
#' @example
#' bin_mean(10, 0.3)
bin_mean <- function(trials = 1, prob = 1) {
  if (check_trials(trials) & check_prob(prob)){
    aux_mean(trials, prob)
  }
}

#' @title bin_variance
#' @description calculates the variance
#' @param trials trials
#' @param prob probability
#' @return variance
#' @export
#' @example
#' bin_variance(10, 0.3)
bin_variance <- function(trials = 1, prob = 1) {
  if (check_trials(trials) & check_prob(prob)) {
    aux_variance(trials, prob)
  }
}

#' @title bin_mode
#' @description calculates the mode
#' @param trials trials
#' @param prob probability
#' @return mode
#' @export
#' @example
#' bin_mode(10, 0.3)
bin_mode <- function(trials = 1, prob = 1) {
  if (check_trials(trials) & check_prob(prob)) {
    aux_mode(trials, prob)
  }
}

#' @title bin_skewness
#' @description calculates the skewness
#' @param trials trials
#' @param prob probability
#' @return skewness
#' @export
#' @example
#' bin_skewness(10, 0.3)
bin_skewness <- function(trials = 1, prob = 1) {
  if (check_trials(trials) & check_prob(prob)) {
    aux_skewness(trials, prob)
  }
}

#' @title bin_kurtosis
#' @description calculates the kurtosis
#' @param trials trials
#' @param prob probability
#' @return kurtosis
#' @export
#' @example
#' bin_kurtosis(10, 0.3)
bin_kurtosis <- function(trials = 1, prob = 1) {
  if (check_trials(trials) & check_prob(prob)) {
    aux_kurtosis(trials, prob)
  }
}
