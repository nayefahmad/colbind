#' Add column into an existing datafrma
#'
#' Cool, huh?
#'
#' @param df1 A dataframe
#' @param name A character arg
#' @param value something
#' @param where Integer value
#'
#' @return
#' @export
#'
#' @examples
add_col <- function(df1, name, value, where){

    df2 <- data.frame(y = value)
    names(df2) <- name

    insert_into(df1, df2, where = where)

}
