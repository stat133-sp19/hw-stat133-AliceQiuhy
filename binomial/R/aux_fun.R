# calculating the expected value or mean
aux_mean <- function(trials = 1, prob = 1) {
  Mean <- trials * prob
  return(Mean)
}

# calculating the variance
aux_variance <- function(trials = 1, prob = 1) {
  Var <- trials * prob * (1 - prob)
  return(Var)
}

# calculating the mode
aux_mode <- function(trials = 1, prob = 1) {
  Mode <- floor(trials * prob + prob)
  return(Mode)
}

# calculating the skewnessexpect_error(aux_skewness(-1,-1,1))
aux_skewness <- function(trials = 1, prob = 1) {
  Skew <- (1 - 2 * prob) / sqrt(trials * prob * (1 - prob))
  return(Skew)
}

# calculating the kurtosis
aux_kurtosis <- function(trials = 1, prob = 1) {
  Kur <- (1 - 6 * prob * (1 - prob)) / (trials * prob * (1 - prob))
  return(Kur)
}
