#' @importFrom ggplot2 ggsave
#' @export
finalise_tnl_plot <-
  function(plot,
           path,
           width.px = 1000,
           height.px = 740) {

    final_plot <- plot

    # ggsave
    ggplot2::ggsave(
      filename = path,
      plot = final_plot,
      width = (width.px / 144),
      height = (height.px / 144),
      bg = "transparent"
    )
  }
