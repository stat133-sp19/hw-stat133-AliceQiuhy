context("binomial")

test_that("bin_choose", {
  expect_error(bin_choose(4,5))
  expect_error(bin_choose(4,2:5))
  expect_error(bin_choose(4,2,3))
  expect_equal(bin_choose(4,2),6)
  expect_length(bin_choose(4,2),1)
  expect_type(bin_choose(4,2),"double")
})

test_that("bin_probability", {
  expect_error(bin_probability(10, 5, 0.5))
  expect_error(bin_probability(10, 5, -0.5))
  expect_error(bin_probability(-2, 5, 0.5))
  expect_error(bin_probability(2, 3:5, 0.5))
  expect_equal(bin_probability(2, 5, 0.5), 0.3125)
  expect_length(bin_probability(2, 5, 0.5),1)
  expect_type(bin_probability(2, 5, 0.5),"double")
})

test_that("bin_distribution", {
  expect_error(bin_distribution(5, -0.5))
  expect_error(bin_distribution(-5, 0.5))
  expect_error(bin_distribution(3:5, 0.5))
  expect_type(bin_distribution(5, 0.5),"list")
  expect_length(bin_distribution(5, 0.5),2)
})

test_that("bin_cumulative", {
  expect_error(bin_cumulative(5, -0.5))
  expect_error(bin_cumulative(-5, 0.5))
  expect_error(bin_cumulative(3:5, 0.5))
  expect_type(bin_cumulative(5, 0.5),"list")
  expect_length(bin_cumulative(5, 0.5),3)
})

