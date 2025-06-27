
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mathutils

<!-- badges: start -->

<!-- badges: end -->

Mathematical and Statistical Utility Functions for R

## Overview

The **mathutils** package provides a collection of utility functions for
common mathematical and statistical operations. It includes functions
for data normalization, enhanced statistical summaries.

## Key Features

- **Enhanced Statistical Summary**: Comprehensive statistics including
  measures of central tendency, variability, and distribution shape
- **Data Normalization**: Min-max and z-score normalization methods

## Installation

You can install the development version of mathutils from GitHub with:

## Functions Overview

mathutils provides four main utility functions:

| Function             | Purpose                                 |
|----------------------|-----------------------------------------|
| `enhanced_summary()` | Comprehensive statistical summary       |
| `normalize_data()`   | Data normalization (min-max or z-score) |

## Usage Examples

## Development

This package was developed following modern R package development
practices using:

- **usethis**: Package setup and maintenance automation
- **devtools**: Development, testing, and installation tools
- **roxygen2**: Documentation generation from inline comments
- **testthat**: Unit testing framework

## License

This project is licensed under the MIT License - see the LICENSE file
for details.

## Contact

- Author: Sayali Salunkhe
- Email: <salunkhesayali20@gmail.com>
- GitHub: [@sayali-bot](https://github.com/sayali-bot)

## Installation

You can install the development version of mathutils from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("sayali-bot/mathutils")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
library(mathutils)

# 1. Enhanced Statistical Summary
data <- c(1, 2, 3, 4, 5, 100)
summary_res <- enhanced_summary(data)
print(summary_res)
#> $mean
#> [1] 19.16667
#> 
#> $median
#> [1] 3.5
#> 
#> $sd
#> [1] 39.62533
#> 
#> $min
#> [1] 1
#> 
#> $max
#> [1] 100
#> 
#> $range
#> [1] 99
#> 
#> $n
#> [1] 6
#> $mean
#> [1] 19.16667
#> $median
#> [1] 3.5
#> $sd
#> [1] 39.627
#> $min
#> [1] 1
#> $max
#> [1] 100
#> $range
#> [1] 99
#> $n
#> [1] 6

# 2. Normalize Data
norm_minmax <- normalize_data(data, method = "minmax")
norm_zscore <- normalize_data(data, method = "zscore")
print(norm_minmax)
#> [1] 0.00000000 0.01010101 0.02020202 0.03030303 0.04040404 1.00000000
#> [1] 0.0000000 0.0101010 0.0202020 0.0303030 0.0404040 1.0000000
print(norm_zscore)
#> [1] -0.4584610 -0.4332246 -0.4079882 -0.3827518 -0.3575154  2.0399410
#> [1] -0.4469 -0.4303 -0.4137 -0.3971 -0.3805  3.0685
```
