#' Normalize Numeric Data
#'
#' Normalizes numeric data using min-max normalization or z-score standardization.
#' @param x A numeric vector
#' @param method Character, either "minmax" or "zscore". Default is "minmax"
#'
#' @returns A normalized numeric vector
#' @export
#'
#' @examples
#' data <- c(10, 20, 30, 40, 50)
#' normalize_data(data, method = "minmax")
#' normalize_data(data, method = "zscore")
normalize_data <- function(x, method = "minmax") {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector")
  }

  if (method == "minmax") {
    (x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))
  } else if (method == "zscore") {
    (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
  } else {
    stop("Method must be either 'minmax' or 'zscore'")
  }
}
