
<!-- README.md is generated from README.Rmd. Please edit that file -->

# trackpack

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of trackpack is to track the statistics of downloads of the
lazytrade package.

## Installation

You can install the released version of trackpack from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("trackpack")
```

## Example

This is a basic example which shows you how to solve a common problem:

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(trackpack)
library(ggplot2)
## business logic code
library(cranlogs)
stats <- cran_downloads("lazytrade", from = Sys.Date() - 100, to = Sys.Date() - 1) 
#sum(stats$count)


ggplot(stats, aes(date, count)) + 
  geom_col() + 
  labs(
    title = sprintf(
      "{stats} downloads to %s", 
      Sys.Date() - 1
      ), 
    caption = "data from {cranlogs} about 'lazytrade' R package"
  ) + 
  theme_minimal()
```

<img src="man/figures/README-example-1.png" width="100%" />

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
