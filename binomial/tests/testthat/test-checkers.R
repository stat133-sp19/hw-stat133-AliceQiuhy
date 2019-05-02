context("checkers")

test_that("check_prob", {
  expect_error(check_prob(c(1,2,3)))
  expect_error(check_prob(-1))
  expect_error(check_prob("a"))
  expect_true(check_prob(0.5))
  expect_true(check_prob(1))
  expect_type(check_prob(0.5),"logical")
  expect_length(check_prob(0.5),1)
})

test_that("check_trials", {
  expect_error(check_trials(c(1,2,3)))
  expect_error(check_trials(-1))
  expect_error(check_trials("a"))
  expect_true(check_trials(5))
  expect_type(check_trials(5),"logical")
  expect_length(check_trials(5),1)
})

test_that("check_success", {
  expect_error(check_success(5,2))
  expect_error(check_success(-1,2))
  expect_error(check_success("a","b"))
  expect_error(check_success(c(2:4),2))
  expect_true(check_success(2,5))
  expect_type(check_success(2,5),"logical")
  expect_length(check_success(2,5),1)
})
