#' Insert one dataframe into another
#'
#' You can specify where to splice in
#'
#' @param x A dataframe
#' @param y A dataframe
#' @param where An integer value
#'
#' @return A dataframe
#' @export
#'
#' @examples
insert_into <- function(x, y, where = 1) {
    if (where == 1) {
        cbind(y, x)
    } else if (where > ncol(x)) {
        cbind(x, y)
    } else {
        lhs <- 1:(where - 1)
        cbind(x[lhs], y, x[-lhs])
    }
}
