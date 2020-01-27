test_that("can add column at any position", {
    df1 <- data.frame(a = 3, b = 4, c = 5)
    df2 <- data.frame(X = 1, Y = 2)

    # new helper function:
    at_pos <- function(i) {
        insert_into(df1, df2, where = i)
    }

    # expectations:
    expect_named(at_pos(1), c("X", "Y", "a", "b", "c"))
    expect_named(at_pos(2), c("a", "X", "Y", "b", "c"))
    expect_named(at_pos(3), c("a", "b", "X", "Y", "c"))
})


test_that("end up with right num cols", {
    df1 <- data.frame(a = 3, b = 4, c = 5)
    df2 <- data.frame(X = 1, Y = 2)

    n <- ncol(df1) + ncol(df2)

    # new helper function:
    at_pos <- function(i) {
        insert_into(df1, df2, where = i)
    }

    expect_equal(n, ncol(at_pos(1)))
    expect_equal(n, ncol(at_pos(2)))
    expect_equal(n, ncol(at_pos(3)))

})
