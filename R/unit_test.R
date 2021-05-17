library(testthat)


test_that("Testing pluralize_gift function",{

  expect_equal(pluralize_gift("penny"), "pennies")

  expect_equal(pluralize_gift("bar"), "bars")

  expect_equal(pluralize_gift("goose"), "geese")
}
 )

test_that("Checking for an error in make_phrase function",{

  expect_error(make_phrase("bob", "very", "burger", "eating", "california"))
}
 )

test_that("Checking sing_day function", {

  expect_error(sing_day(10, xmas, Full.Phrase))
}
 )
