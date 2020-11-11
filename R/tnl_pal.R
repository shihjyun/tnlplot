#' @importFrom grDevices colorRampPalette
#' @export

tnl_pal <-
  function(palette = "main5",
           manual.pick = NULL,
           reverse = FALSE,
           ...) {
    stopifnot()

    if (is.null(manual.pick)) {
      pal <- tnl_palettes[[palette]]

    } else {
      selected_colors <- manual.pick
      if (anyNA(tnl_palettes[[palette]][selected_colors])) {
        stop(paste0('Your selected colors do not exist in ', palette, ' palette.'))
      }
      pal <- tnl_palettes[[palette]][selected_colors]
    }

    if (reverse)
      pal <- rev(pal)

    grDevices::colorRampPalette(pal, ...)
  }
