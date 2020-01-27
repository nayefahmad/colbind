
# colbind

<!-- badges: start -->
<!-- badges: end -->

The goal of colbind is to demo unit testing. 

This is part of the workshop at rstudio::conf 2020, on 2020-01-27. 

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

## Questions

* What does it mean to have "one test per invariant"? 
* How to get `use_coverage()` to work? 



