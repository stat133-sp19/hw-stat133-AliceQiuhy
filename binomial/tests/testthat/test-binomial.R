context("binomial")

test_that("bin_choose", {
  expect_error(bin_choose(4,5))
  expect_error(bin_choose(4,2:5))
  expect_equal(bin_choose(4,2),6)
})

test_that("bin_probability", {
  expect_error(bin_probability(10, 5, 0.5))
  expect_error(bin_probability(10, 5, -0.5))
  expect_error(bin_probability(-2, 5, 0.5))
  expect_error(bin_probability(2, 3:5, 0.5))
  expect_equal(bin_probability(2, 5, 0.5), 0.3125)
})

test_that("bin_distribution", {
  expect_error(bin_distribution(5, -0.5))
  expect_error(bin_distribution(-5, 0.5))
  expect_error(bin_distribution(3:5, 0.5))
})

test_that("bin_cumulative", {
  expect_error(bin_cumulative(5, -0.5))
  expect_error(bin_cumulative(-5, 0.5))
  expect_error(bin_cumulative(3:5, 0.5))
})

