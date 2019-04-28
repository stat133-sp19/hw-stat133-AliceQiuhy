# bin_mean(10, 0.3)
# bin_variance(10, 0.3)
# bin_mode(10, 0.3)
# bin_skewness(10, 0.3)
# bin_skewness(10, 0.3)
# bin_kurtosis(10, 0.3)

bin_mean <- function(trials = 1, prob = 1) {
  aux_mean(trials, prob)
}

bin_variance <- function(trials = 1, prob = 1) {
  aux_variance(trials, prob)
}

bin_mode <- function(trials = 1, prob = 1) {
  aux_mode(trials, prob)
}

bin_skewness <- function(trials = 1, prob = 1) {
  aux_skewness(trials, prob)
}

bin_kurtosis <- function(trials = 1, prob = 1) {
  aux_kurtosis(trials, prob)
}
