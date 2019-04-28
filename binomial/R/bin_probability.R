#' @title bin_probability
#' @description calculating the probability of getting successes in trials with probability prob per trial
#' @param trials the number of trials
#' @param success the number of success
#' @param prob the probability of success per trial
#' @return the probability of getting successes in trials with probability prob per trial
#' @export
#' @examples
#' # probability of getting 2 successes in 5 trials
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#'
#' # probabilities of getting 2 or less successes in 5 trials
#' bin_probability(success = 0:2, trials = 5, prob = 0.5)
#'
#' # 55 heads in 100 tosses of a loaded coin with 45% chance of heads
#' bin_probability(success = 55, trials = 100, prob = 0.45)

bin_probability <- function(success = 1, trials = 1, prob = 0.5) {
  if(!(check_trials(trials))) {
    stop("\n invalid 'trials' value")
  }
  if(!(check_prob(prob))) {
    stop("\n invalid 'prob' value")
  }
  if(!(check_success(success, trials))) {
    stop("\n invalid 'success' value")
  }
  p <- bin_choose(trials, success) * prob^success * (1 - prob)^(trials - success)
  return(p)
}
