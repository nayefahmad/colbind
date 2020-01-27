
# colbind

<!-- badges: start -->
<!-- badges: end -->

The goal of colbind is to demo unit testing. 

This is part of the workshop at rstudio::conf 2020, on 2020-01-27. 

Materials: https://github.com/rstudio-conf-2020/build-tidy-tools 


## Installation

You can install the released version of colbind from GitHub with:

``` r
devtools::install_github("nayefahmad/colbind")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(colbind)

df1 <- data.frame(a = 3, b = 4, c = 5)
df2 <- data.frame(X = 1, Y = 2)
insert_into(df1, df2, where = 2)

```

## Notes 

* you might want to use `devtools::test_file()` explicitly, because test_file() can conflict with `testthat::test_file()`. Alternatively, just use the keyboard shortcut `ctrl + shift + T` 
* I was gonna ask, **"Can we use this testing infrastructure in cases where we're not building packages, like for analytical workflows?"**; but then I realized that's the wrong approach. Why not just build a package with demo data that contains all the functions (and tests) and then source() that in the actual analysis? That will make it easy to reuse those functions for future use cases.
* inst/ folder in an R package can be used to store useful files that aren't R code (e.g. SQL scripts). Should data be in here? That's a grey area. 
* If you install from CRAN, you aren't installing "from source" - because CRAN builds a binary from source. However, when installing from GitHub, you are installing "from source". 


## Questions

* What does it mean to have "one test per invariant"? 
* How to get `use_coverage()` to work? 



