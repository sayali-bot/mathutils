test_that("enhanced_summary works correctly", {
  data <- c(1, 2, 3, 4, 5)
  result <- enhanced_summary(data)

  expect_equal(result$mean, 3)
  expect_equal(result$median, 3)
  expect_equal(result$n, 5)
})

test_that("enhanced_summary handles NA values", {
  data <- c(1, 2, NA, 4, 5)
  result <- enhanced_summary(data)

  expect_equal(result$n, 4)
  expect_false(is.na(result$mean))
})
