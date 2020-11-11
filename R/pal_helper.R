#' @export
tnl_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (tnl_colors)

  tnl_colors[cols]
}
