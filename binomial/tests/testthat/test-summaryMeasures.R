context("summary measures")

test_that("aux_mean", {
  expect_gte(aux_mean(10, 0.5), 0)
  expect_lt(aux_mean(-10, 0.5), 0)
  expect_equal(aux_mean(10, 0.5), 5)
  expect_length(aux_mean(10, 0.5), 1)
  expect_type(aux_mean(10, 0.5),"double")
})

test_that("aux_mode", {
  expect_gte(aux_mode(10, 0.5), 0)
  expect_lt(aux_mode(-10, 0.5), 0)
  expect_equal(aux_mode(10, 0.5), 5)
  expect_length(aux_mode(10, 0.5), 1)
  expect_type(aux_mode(10, 0.5),"double")
})

test_that("aux_variance", {
  expect_gte(aux_variance(10, 0.5), 0)
  expect_lt(aux_variance(-10, 0.5), 0)
  expect_equal(aux_variance(10, 0.5), 2.5)
  expect_length(aux_variance(10, 0.5), 1)
  expect_type(aux_variance(10, 0.5),"double")
})

test_that("aux_skewness", {
  expect_equal(aux_skewness(10, 0.5), 0)
  expect_equal(aux_skewness(10, 0.45), 0.06356417)
  expect_equal(aux_skewness(10, 0.55), -0.06356417)
  expect_length(aux_skewness(10, 0.5), 1)
  expect_type(aux_skewness(10, 0.5),"double")
})

test_that("aux_kurtosis", {
  expect_equal(aux_kurtosis(10, 0.5), -0.2)
  expect_equal(aux_kurtosis(10, 0.45), -0.1959596)
  expect_equal(aux_kurtosis(10, 0.55), -0.1959596)
  expect_length(aux_kurtosis(10, 0.5), 1)
  expect_type(aux_kurtosis(10, 0.5),"double")
})
