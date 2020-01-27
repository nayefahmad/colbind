test_that("where controls position", {
    df <- data.frame(x = 1)
    expect_equal(
        add_col(df, "y", 2, where = 1),  # output
        data.frame(y = 2, x = 1)         # target
    )
    expect_equal(
        add_col(df, "y", 2, where = 2),  # output
        data.frame(x = 1, y = 2)         # tartget
    )
})
