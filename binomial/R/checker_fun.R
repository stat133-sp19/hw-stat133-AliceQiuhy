# private function
# test if an input prob is a valid probability value (i.e. 0<=p<=1)
check_prob <- function(prob = 1) {
  if (length(prob) != 1) {
    stop("\n'prob' values must be a numeric value with length 1")
  }
  if ((prob < 0) | (prob > 1) | (!is.numeric(prob))) {
    stop("\n'prob' values must be a numeric value between 0 and 1")
  }
  TRUE
}

# test if an input trails is a valid value for number of trails (i.e. n is a non-negative integer)
check_trials <- function(trials = 1) {
  if ((!is.numeric(trials))) {
    stop("\n'trials' values must be a numeric value")
  }
  if (length(trials) != 1) {
    stop("\n'trials' values must be a numeric value with length 1")
  }
  if (trials < 0) {
    stop("\n'trials' must be a non-negative integer")
  }
  TRUE
}

# test if an input success is a valid value for number of successes (i.e. 0<=k<=n)
check_success <- function(success = 1, trials = 1) {
  if ((!is.numeric(success)) | (!is.numeric(trials))) {
    stop("\n'success' or 'trials' values must be a numeric value")
  }
  if (length(success) > 1){
    if (any(success > trials)){
      stop("\n'success' cannot be greater than trials")
    }
  }else {
    if (success > trials) {
      stop("\n'success' cannot be greater than trials")
    }
  }

  if (length(success) > 1){
    if (any(success < 0)) {
      stop("\n invalid 'success' value")
    }
  }else {
    if (success < 0) {
      stop("\n'success' cannot be greater than trials")
    }
  }

  TRUE
}
