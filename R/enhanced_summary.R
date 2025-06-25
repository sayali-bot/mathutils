#' Enhanced Statistical Summary
#'
#' Provides comprehensive statistical summary including measures of central tendency,
#' variability, and distribution shape for numeric vectors.
#' @param x A numeric vector to summarize
#' @param na.rm Logical, should missing values be removed? Default is TRUE
#'
#' @returns A named list containing statistical measures including mean, median,
#'    standard deviation, minimum, maximum , range , and count of non-missing values
#' @export
#'
#' @examples
#' # Basic Usage
#' data <- c(1,2,3,4,5,100)
#' enhanced_summary(data)
#'
#' # with missing values
#' data_with_na <- c(1, 2, NA, 4, 5)
#' enhanced_summary(data_with_na)
enhanced_summary <- function(x, na.rm = TRUE) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector")
  }

  list(
    mean = mean(x, na.rm = na.rm),
    median = median(x, na.rm = na.rm),
    sd = sd(x, na.rm = na.rm),
    min = min(x, na.rm = na.rm),
    max = max(x, na.rm = na.rm),
    range = max(x, na.rm = na.rm) - min(x, na.rm = na.rm),
    n = length(x[!is.na(x)])
  )
}
