#' @title Set global theme options for sjp-functions
#' @name sjp.setTheme
#'
#' @description Set global theme options for sjp-functions.
#'
#' @param base base theme where theme is built on. By default, all
#'          metrics from \code{theme_gray()} are used. See 'Details'.
#' @param theme.font base font family for the plot.
#' @param title.size size of plot title. Default is 1.3.
#' @param title.color color of plot title. Default is \code{"black"}.
#' @param title.align alignment of plot title. Must be one of \code{"left"} (default),
#'          \code{"center"} or \code{"right"}. You may use initial letter only.
#' @param title.vjust numeric, vertical adjustment for plot title.
#' @param geom.outline.size size of bar outlines. Default is 0.1. Use
#'          size of \code{0} to remove geom outline.
#' @param geom.outline.color color of geom outline. Only applies, if \code{geom.outline.size}
#'          is larger than 0.
#' @param geom.boxoutline.size size of outlines and median bar especially for boxplots.
#'          Default is 0.5. Use size of \code{0} to remove boxplot outline.
#' @param geom.boxoutline.color color of outlines and median bar especially for boxplots.
#'          Only applies, if \code{geom.boxoutline.size} is larger than 0.
#' @param geom.alpha specifies the transparancy (alpha value) of geoms
#' @param geom.linetype linetype of line geoms. Default is \code{1} (solid line).
#' @param geom.errorbar.size size (thickness) of error bars. Default is \code{0.8}
#' @param geom.errorbar.linetype linetype of error bars. Default is \code{1} (solid line).
#' @param geom.label.color color of geom's value and annotation labels
#' @param geom.label.size size of geom's value and annotation labels
#' @param geom.label.alpha alpha level of geom's value and annotation labels
#' @param geom.label.angle angle of geom's value and annotation labels
#' @param axis.title.color color of x- and y-axis title labels
#' @param axis.title.size size of x- and y-axis title labels
#' @param axis.title.x.vjust numeric, vertical adjustment of x-axis-title.
#' @param axis.title.y.vjust numeric, vertical adjustment of y-axis-title.
#' @param axis.angle.x angle for x-axis labels
#' @param axis.angle.y angle for y-axis labels
#' @param axis.angle angle for x- and y-axis labels. If set, overrides both \code{axis.angle.x} and \code{axis.angle.y}
#' @param axis.textcolor.x color for x-axis labels. If not specified, a default dark gray
#'          color palette will be used for the labels.
#' @param axis.textcolor.y color for y-axis labels. If not specified, a default dark gray
#'          color palette will be used for the labels.
#' @param axis.textcolor color for both x- and y-axis labels.
#'          If set, overrides both \code{axis.textcolor.x} and \code{axis.textcolor.y}
#' @param axis.linecolor.x color of x-axis border
#' @param axis.linecolor.y color of y-axis border
#' @param axis.linecolor color for both x- and y-axis borders.
#'          If set, overrides both \code{axis.linecolor.x} and \code{axis.linecolor.y}.
#' @param axis.line.size size (thickness) of axis lines. Only affected, if \code{axis.linecolor}
#'          is set.
#' @param axis.textsize.x size of x-axis labels
#' @param axis.textsize.y size of y-axis labels
#' @param axis.textsize size for both x- and y-axis labels.
#'          If set, overrides both \code{axis.textsize.x} and \code{axis.textsize.y}.
#' @param axis.ticksize.x size of tick marks at x-axis.
#' @param axis.ticksize.y size of tick marks at y-axis.
#' @param axis.tickslen length of axis tick marks
#' @param axis.tickscol color of axis tick marks
#' @param axis.ticksmar margin between axis labels and tick marks
#' @param panel.bordercol color of whole diagram border (panel border)
#' @param panel.backcol color of the diagram's background
#' @param panel.col color of both diagram's border and background.
#'          If set, overrides both \code{panel.bordercol} and \code{panel.backcol}.
#' @param panel.major.gridcol color of the major grid lines of the diagram background
#' @param panel.minor.gridcol color of the minor grid lines of the diagram background
#' @param panel.gridcol color for both minor and major grid lines of the diagram background.
#'          If set, overrides both \code{panel.major.gridcol} and \code{panel.minor.gridcol}.
#' @param panel.gridcol.x see \code{panel.gridcol}.
#' @param panel.gridcol.y see \code{panel.gridcol}.
#' @param panel.major.linetype line type for major grid lines
#' @param panel.minor.linetype line type for minor grid lines
#' @param plot.margins numeric vector of length 4, indicating the top, right,
#'          bottom and left margin of the plot region.
#' @param plot.backcol color of the plot's background
#' @param plot.bordercol color of whole plot's border (panel border)
#' @param plot.col color of both plot's region border and background.
#'          If set, overrides both \code{plot.backcol} and \code{plot.bordercol}.
#' @param legend.pos position of the legend, if a legend is drawn.
#'          \describe{
#'            \item{\emph{legend outside plot}}{
#'              Use \code{"bottom"}, \code{"top"}, \code{"left"} or \code{"right"}
#'              to position the legend above, below, on the left or right side
#'              of the diagram. Right positioning is default.
#'            }
#'            \item{\emph{legend inside plot}}{
#'              If \code{legend.inside = TRUE}, legend can be placed inside
#'              plot. Use \code{"top left"}, \code{"top right"}, \code{"bottom left"}
#'              and \code{"bottom right"} to position legend in any of these corners,
#'              or a two-element numeric vector with values from 0-1. See also
#'              \code{legend.inside}.
#'            }
#'          }
#' @param legend.just justification of legend, relative to its position (\code{"center"} or
#'          two-element numeric vector with values from 0-1. By default (outside legend),
#'          justification is centered. If legend is inside and justification not specified,
#'          legend justification is set according to legend position.
#' @param legend.inside logical, use \code{TRUE} to put legend inside the plotting area. See \code{legend.pos}.
#' @param legend.size text size of the legend. Default is 1. Relative size, so
#'          recommended values are from 0.3 to 2.5
#' @param legend.color color of the legend labels
#' @param legend.title.size text size of the legend title
#' @param legend.title.color color of the legend title
#' @param legend.title.face font face of the legend title. By default, \code{"bold"} face is used.
#' @param legend.bordercol color of the legend's border. Default is \code{"white"}, so no visible border is drawn.
#' @param legend.backgroundcol fill color of the legend's background. Default is \code{"white"}, so no visible background is drawn.
#' @param legend.item.size size of legend's item (legend key), in centimetres.
#' @param legend.item.bordercol color of the legend's item-border. Default is \code{"white"}.
#' @param legend.item.backcol fill color of the legend's item-background. Default is \code{"grey90"}.
#'
#' @return The customized theme object, or \code{NULL}, if a ggplot-theme was used.
#'
#' @details The \code{base} argument is intended to select a ggplot-theme
#'            as base for further modifications (which can be triggered
#'            via the various function arguments).
#'
#' @seealso \href{http://www.strengejacke.de/sjPlot/custplot/}{sjPlot manual: customize plot appearance}
#'
#' @references \itemize{
#'              \item \href{http://zevross.com/blog/2014/08/04/beautiful-plotting-in-r-a-ggplot2-cheatsheet-3/}{Beautiful plotting in R: A ggplot2 cheatsheet}
#'              \item \href{http://minimaxir.com/2015/02/ggplot-tutorial/}{An Introduction on How to Make Beautiful Charts With R and ggplot2}
#'             }
#'
#' @examples
#' \dontrun{
#' library(sjmisc)
#' data(efc)
#' # set sjPlot-defaults, a slightly modification
#' # of the ggplot base theme
#' sjp.setTheme()
#'
#' # legends of all plots inside
#' sjp.setTheme(legend.pos = "top left",
#'              legend.inside = TRUE)
#' sjp.xtab(efc$e42dep, efc$e16sex)
#'
#' # Use classic-theme. you may need to
#' # load the ggplot2-library.
#' library(ggplot2)
#' sjp.setTheme(base = theme_classic())
#' sjp.frq(efc$e42dep)
#'
#' # adjust value labels
#' sjp.setTheme(geom.label.size = 3.5, geom.label.color = "#3366cc",
#'              geom.label.angle = 90)
#' # hjust-aes needs adjustment for this
#' update_geom_defaults('text', list(hjust = -0.1))
#' sjp.xtab(efc$e42dep, efc$e16sex, vjust = "center", hjust = "center")
#'
#' # Create own theme based on classic-theme
#' sjp.setTheme(base = theme_classic(), axis.linecolor = "grey50",
#'              axis.textcolor = "#6699cc")
#' sjp.frq(efc$e42dep)}
#'
#' @import ggplot2
#' @importFrom scales brewer_pal grey_pal
#' @importFrom dplyr case_when
#' @export
sjp.setTheme <- function(# base theme
                         base = theme_grey(),
                         theme.font = NULL,
                         # title defaults
                         title.color = "black",
                         title.size = 1.2,
                         title.align = "left",
                         title.vjust = NULL,
                         # geom defaults
                         # geom.colors=NULL,
                         geom.outline.color = NULL,
                         geom.outline.size = 0,
                         geom.boxoutline.size = 0.5,
                         geom.boxoutline.color = "black",
                         geom.alpha = 1,
                         geom.linetype = 1,
                         geom.errorbar.size = 0.7,
                         geom.errorbar.linetype = 1,
                         # value labels
                         geom.label.color = NULL,
                         geom.label.size = 4,
                         geom.label.alpha = 1,
                         geom.label.angle = 0,
                         # axis titles
                         axis.title.color = "grey30",
                         axis.title.size = 1.1,
                         axis.title.x.vjust = NULL,
                         axis.title.y.vjust = NULL,
                         # axis text angle
                         axis.angle.x = 0,
                         axis.angle.y = 0,
                         axis.angle = NULL,
                         # axis text colors
                         axis.textcolor.x = "grey30",
                         axis.textcolor.y = "grey30",
                         axis.textcolor = NULL,
                         # axis line colors
                         axis.linecolor.x = NULL,
                         axis.linecolor.y = NULL,
                         axis.linecolor = NULL,
                         axis.line.size = 0.5,
                         # axis text size
                         axis.textsize.x = 1,
                         axis.textsize.y = 1,
                         axis.textsize = NULL,
                         # axis ticks
                         axis.tickslen = NULL,
                         axis.tickscol = NULL,
                         axis.ticksmar = NULL,
                         axis.ticksize.x = NULL,
                         axis.ticksize.y = NULL,
                         # panel defaults
                         panel.backcol = NULL,
                         panel.bordercol = NULL,
                         panel.col = NULL,
                         panel.major.gridcol = NULL,
                         panel.minor.gridcol = NULL,
                         panel.gridcol = NULL,
                         panel.gridcol.x = NULL,
                         panel.gridcol.y = NULL,
                         panel.major.linetype = 1,
                         panel.minor.linetype = 1,
                         # plot background color
                         plot.backcol = NULL,
                         plot.bordercol = NULL,
                         plot.col = NULL,
                         plot.margins = NULL,
                         # legend
                         legend.pos = "right",
                         legend.just = NULL,
                         legend.inside = FALSE,
                         legend.size = 1,
                         legend.color = "black",
                         legend.title.size = 1,
                         legend.title.color = "black",
                         legend.title.face = "bold",
                         legend.backgroundcol = "white",
                         legend.bordercol = "white",
                         legend.item.size = NULL,
                         legend.item.backcol = "grey90",
                         legend.item.bordercol = "white") {
  sjtheme <- NULL
  # ----------------------------------------
  # set defaults for geom label colors
  # ----------------------------------------
  if (is.null(geom.label.color)) {
    geom.label.color <- "black"
  }
  # ----------------------------------------
  # set defaults for axis text angle
  # ----------------------------------------
  if (!is.null(axis.angle)) {
    axis.angle.x <- axis.angle.y <- axis.angle
  } else {
    axis.angle <- axis.angle.x
  }
  # ----------------------------------------
  # set defaults for axis text color
  # ----------------------------------------
  if (!is.null(axis.textcolor)) {
    axis.textcolor.x <- axis.textcolor.y <- axis.textcolor
  } else {
    if (is.null(axis.textcolor.x))
      axis.textcolor <- axis.textcolor.y
    else
      axis.textcolor <- axis.textcolor.x
  }
  # ----------------------------------------
  # set defaults for axis line color
  # ----------------------------------------
  if (!is.null(axis.linecolor)) {
    axis.linecolor.x <- axis.linecolor.y <- axis.linecolor
  } else {
    if (is.null(axis.linecolor.x))
      axis.linecolor <- axis.linecolor.y
    else
      axis.linecolor <- axis.linecolor.x
  }
  # ----------------------------------------
  # set defaults for axis text size
  # ----------------------------------------
  if (!is.null(axis.textsize)) {
    axis.textsize.x <- axis.textsize.y <- axis.textsize
  } else {
    if (is.null(axis.textsize.x))
      axis.textsize <- axis.textsize.y
    else
      axis.textsize <- axis.textsize.x
  }
  # ----------------------------------------
  # set defaults for grid colors
  # ----------------------------------------
  if (!is.null(panel.gridcol)) {
    panel.major.gridcol <- panel.minor.gridcol <- panel.gridcol
  } else {
    if (is.null(panel.major.gridcol))
      panel.gridcol <- panel.minor.gridcol
    else
      panel.gridcol <- panel.major.gridcol
  }
  # ----------------------------------------
  # set defaults for panel colors
  # ----------------------------------------
  if (!is.null(panel.col)) {
    panel.backcol <- panel.bordercol <- panel.col
  } else {
    if (is.null(panel.backcol))
      panel.col <- panel.bordercol
    else
      panel.col <- panel.backcol
  }
  # ----------------------------------------
  # set title alignment
  # ----------------------------------------
  if (!is.null(title.align)) {
    if (title.align == "left" || title.align == "l") title.align <- 0
    if (title.align == "right" || title.align == "r") title.align <- 1
    if (title.align == "center" || title.align == "c") title.align <- 0.5
  } else {
    title.align <- 0
  }
  # ----------------------------------------
  # set defaults for plot colors
  # ----------------------------------------
  if (!is.null(plot.col)) {
    plot.backcol <- plot.bordercol <- plot.col
  } else {
    if (is.null(plot.backcol))
      plot.col <- plot.bordercol
    else
      plot.col <- plot.backcol
  }
  # ----------------------------------------
  # set defaults for legend pos
  # ----------------------------------------
  if (legend.inside) {
    # check if character constants have been used and if so,
    # convert to numeric vector
    if (is.character(legend.pos)) {
      if (legend.pos == "top right") legend.pos <- c(1,1)
      else if (legend.pos == "bottom right") legend.pos <- c(1,0)
      else if (legend.pos == "bottom left") legend.pos <- c(0,0)
      else if (legend.pos == "top left") legend.pos <- c(0,1)
      if (is.null(legend.just)) legend.just <- legend.pos
    }
  }
  # set justification default
  if (is.null(legend.just)) legend.just <- "center"
  # ----------------------------------------
  # check if theme-preset is requested
  # ----------------------------------------
  if (!is.null(theme) && any(class(theme) == "theme") && any(class(theme) == "gg")) {
    theme_set(theme)
  }
  # ----------------------------------------
  # else, customize theme
  # ----------------------------------------
  else if (!is.null(base) && any(class(base) == "theme") && any(class(base) == "gg")) {
    sjtheme <- base +
      # ----------------------------------------
      # set base elements that are always set
      # ----------------------------------------
      theme(plot.title = element_text(size = rel(title.size),  colour = title.color, hjust = title.align),
            axis.text = element_text(angle = axis.angle, size = rel(axis.textsize), colour = axis.textcolor),
            axis.text.x = element_text(angle = axis.angle.x, size = rel(axis.textsize.x), colour = axis.textcolor.x),
            axis.text.y = element_text(angle = axis.angle.y, size = rel(axis.textsize.y), colour = axis.textcolor.y),
            axis.title = element_text(size = rel(axis.title.size), colour = axis.title.color),
            legend.position = legend.pos,
            legend.justification = legend.just,
            legend.text = element_text(size = rel(legend.size), colour = legend.color),
            legend.title = element_text(size = rel(legend.title.size), colour = legend.title.color, face = legend.title.face),
            legend.background = element_rect(colour = legend.bordercol, fill = legend.backgroundcol))
    # ----------------------------------------
    # set base font for theme
    # ----------------------------------------
    if (!is.null(theme.font)) {
      sjtheme <- sjtheme +
        theme(text = element_text(family = theme.font))
    }
    # ----------------------------------------
    # set legend items background-color
    # ----------------------------------------
    if (!is.null(legend.item.backcol)) {
      sjtheme <- sjtheme +
        theme(legend.key = element_rect(colour = legend.item.bordercol, fill = legend.item.backcol))
    }
    # ----------------------------------------
    # set legend item size
    # ----------------------------------------
    if (!is.null(legend.item.size)) {
      sjtheme <- sjtheme +
        theme(legend.key.size = unit(legend.item.size, "cm"))
    }
    # ----------------------------------------
    # set axis line colors, if defined
    # ----------------------------------------
    if (!is.null(axis.linecolor)) {
      sjtheme <- sjtheme +
        theme(axis.line = element_line(colour = axis.linecolor, size = axis.line.size),
              axis.line.x = element_line(colour = axis.linecolor.x),
              axis.line.y = element_line(colour = axis.linecolor.y))
    }
    # ----------------------------------------
    # set axis ticks, if defined
    # ----------------------------------------
    if (!is.null(axis.tickscol)) {
      sjtheme <- sjtheme +
        theme(axis.ticks = element_line(colour = axis.tickscol))
    }
    if (!is.null(axis.tickslen)) {
      sjtheme <- sjtheme +
        theme(axis.ticks.length = unit(axis.tickslen, "cm"))
    }
    if (!is.null(axis.ticksmar)) {
      sjtheme <- sjtheme +
        theme(axis.text = element_text(margin = margin(t = axis.ticksmar, unit = "cm")))
    }
    if (!is.null(axis.ticksize.x)) {
      sjtheme <- sjtheme +
        theme(axis.ticks.x = element_line(size = axis.ticksize.x))
    }
    if (!is.null(axis.ticksize.y)) {
      sjtheme <- sjtheme +
        theme(axis.ticks.y = element_line(size = axis.ticksize.y))
    }
    # ----------------------------------------
    # set plot colors, if defined
    # ----------------------------------------
    if (!is.null(plot.col)) {
      sjtheme <- sjtheme +
        theme(plot.background = element_rect(colour = plot.bordercol, fill = plot.backcol))
    }
    # ----------------------------------------
    # set panel colors, if defined
    # ----------------------------------------
    if (!is.null(panel.col)) {
      sjtheme <- sjtheme +
        theme(panel.background = element_rect(colour = panel.bordercol, fill = panel.backcol),
              panel.border = element_rect(colour = panel.bordercol))
    }
    # ----------------------------------------
    # set panel grids, if defined
    # ----------------------------------------
    if (!is.null(panel.gridcol)) {
      sjtheme <- sjtheme +
        theme(panel.grid.minor = element_line(colour = panel.minor.gridcol, linetype = panel.minor.linetype),
              panel.grid.major = element_line(colour = panel.major.gridcol, linetype = panel.major.linetype))
    }
    # ----------------------------------------
    # set plot margins. onyl applies to pre-set themes
    # ----------------------------------------
    if (!is.null(plot.margins)) {
      sjtheme <- sjtheme +
        theme(plot.margin = plot.margins)
    }
    # ----------------------------------------
    # set title adjustments. only applies to
    # pre-set themes
    # ----------------------------------------
    if (!is.null(plot.margins)) {
      sjtheme <- sjtheme +
        theme(plot.margin = plot.margins)
    }
    if (!is.null(title.vjust)) {
      sjtheme <- sjtheme +
        theme(plot.title = element_text(vjust = title.vjust))
    }
    if (!is.null(axis.title.x.vjust)) {
      sjtheme <- sjtheme +
        theme(axis.title.x = element_text(vjust = axis.title.x.vjust))
    }
    if (!is.null(axis.title.y.vjust)) {
      sjtheme <- sjtheme +
        theme(axis.title.y = element_text(vjust = axis.title.y.vjust))
    }
    # ----------------------------------------
    # panel grid colors
    # ----------------------------------------
    if (!is.null(panel.gridcol.x)) {
      sjtheme <- sjtheme +
        theme(panel.grid.minor.x = element_line(colour = panel.gridcol.x, linetype = panel.minor.linetype),
              panel.grid.major.x = element_line(colour = panel.gridcol.x, linetype = panel.major.linetype))
    }
    if (!is.null(panel.gridcol.y)) {
      sjtheme <- sjtheme +
        theme(panel.grid.minor.y = element_line(colour = panel.gridcol.y, linetype = panel.minor.linetype),
              panel.grid.major.y = element_line(colour = panel.gridcol.y, linetype = panel.major.linetype))
    }
    # ----------------------------------------
    # finally, set theme
    # ----------------------------------------
    theme_set(sjtheme)
  } else {
    warning("Either `theme` or `base` must be supplied as ggplot-theme-object to set global theme options for sjPlot.", call. = F)
  }

  # ----------------------------------------
  # set defaults for geoms
  # ----------------------------------------
  # if (is.null(geom.colors)) geom.colors <- diverge_hcl(9)
  # sj.theme_scales(geom.colors)
  sj.theme_geoms(geom.alpha,
                 geom.linetype,
                 geom.outline.size,
                 geom.outline.color,
                 geom.boxoutline.size,
                 geom.boxoutline.color,
                 geom.errorbar.size,
                 geom.errorbar.linetype,
                 geom.label.size,
                 geom.label.color,
                 geom.label.alpha,
                 geom.label.angle)
  # return custom theme object
  invisible(sjtheme)
}


sj.theme_geoms <- function(geom.alpha,
                           geom.linetype,
                           geom.outline.size,
                           geom.outline.color,
                           geom.boxoutline.size,
                           geom.boxoutline.color,
                           geom.errorbar.size,
                           geom.errorbar.linetype,
                           geom.label.size,
                           geom.label.color,
                           geom.label.alpha,
                           geom.label.angle) {
  # ----------------------------------------
  # helper function to customize geoms
  # ----------------------------------------
  updateGeoms <- function(geoms, parameters) {
    for (geom in geoms) update_geom_defaults(geom, parameters)
  }

  # Geoms that only require a default colour.
  updateGeoms(c('abline',
                'point',
                'density',
                'errorbar',
                'errorbarh',
                'hline',
                'line',
                'area',
                'tile',
                'dotplot',
                'bar'), list(alpha = geom.alpha))

  update_geom_defaults('text', list(size = geom.label.size,
                                    colour = geom.label.color,
                                    alpha = geom.label.alpha,
                                    angle = geom.label.angle))

  # Special geoms.
  update_geom_defaults('boxplot', list(size = geom.boxoutline.size, colour = geom.boxoutline.color, alpha = geom.alpha))
  update_geom_defaults('bar', list(colour = geom.outline.color, size = geom.outline.size))
  update_geom_defaults('line', list(linetype = geom.linetype))
  updateGeoms(c('errorbar', 'errorbarh'), list(size = geom.errorbar.size, linetype = geom.errorbar.linetype))
}


sj.setGeomColors <- function(plot,
                             geom.colors,
                             pal.len,
                             show.legend = TRUE,
                             labels = NULL,
                             reverse.colors = FALSE) {
  # ---------------------------------------------------------
  # check for themr options
  # ---------------------------------------------------------
  if (!is.null(geom.colors) && geom.colors == "themr") {
    return(plot)
  }

  # ---------------------------------------------------------
  # dummy function for setting legend labels and geom-colors
  # ---------------------------------------------------------
  usenormalscale <- function(plot, geom.colors, labels, bw.figure, ltypes) {
    if (!show.legend) {
      plot <- plot +
        scale_fill_manual(values = geom.colors, guide = FALSE) +
        scale_colour_manual(values = geom.colors, guide = FALSE) +
        scale_linetype_manual(values = ltypes, guide = FALSE) +
        guides(fill = FALSE, colour = FALSE, text = FALSE, linetype = FALSE)
    } else {
      plot <- plot +
        scale_fill_manual(values = geom.colors, labels = labels) +
        scale_colour_manual(values = geom.colors, labels = labels) +
        scale_linetype_manual(values = ltypes)
      # for b/w figures, add linetype scale
      if (bw.figure) {
        plot <- plot + guides(text = FALSE, colour = FALSE)
      } else {
        plot <- plot + guides(text = FALSE, linetype = FALSE)
      }
    }
    return(plot)
  }
  # ---------------------------------------------------------
  # dummy function for only setting legend labels, but no
  # geom-colors
  # ---------------------------------------------------------
  uselegendscale <- function(plot, labels, bw.figure, ltypes) {
    if (!show.legend) {
      plot <- plot +
        scale_fill_discrete(guide = FALSE) +
        scale_colour_discrete(guide = FALSE) +
        scale_linetype_manual(values = ltypes, guide = FALSE) +
        guides(fill = FALSE, colour = FALSE, text = FALSE, linetype = FALSE)
    } else {
      plot <- plot +
        scale_fill_discrete(labels = labels) +
        scale_colour_discrete(labels = labels) +
        scale_linetype_manual(values = ltypes)
      # for b/w figures, add linetype scale
      if (bw.figure) {
        plot <- plot + guides(text = FALSE, colour = FALSE)
      } else {
        plot <- plot + guides(text = FALSE, linetype = FALSE)
      }
    }
    return(plot)
  }

  # check if we have coloured plot or b/w figure with different linetypes
  bw.figure <- !is.null(geom.colors) && geom.colors[1] == "bw"

  if (bw.figure)
    ltypes <- seq_len(pal.len)
  else
    ltypes <- rep(1, times = pal.len)

  # ---------------------------------------------------------
  # set geom colors
  # ---------------------------------------------------------
  if (!is.null(geom.colors)) {
    # brewer palette?
    if (is.brewer.pal(geom.colors[1])) {
      if (length(geom.colors) > 1) {
        neutral.color <- geom.colors[2]
        pal.len <- pal.len - 1
      } else {
        neutral.color <- NULL
      }
      geom.colors <- scales::brewer_pal(palette = geom.colors[1])(pal.len)
      if (reverse.colors) geom.colors <- rev(geom.colors)
      if (!is.null(neutral.color)) geom.colors <- c(geom.colors, neutral.color)
    } else if (geom.colors[1] == "gs") {
      geom.colors <- scales::grey_pal()(pal.len)
      if (reverse.colors) geom.colors <- rev(geom.colors)
    } else if (geom.colors[1] == "bw") {
      geom.colors <- rep("black", times = pal.len)
    } else if (length(geom.colors) > pal.len) {
      warning("More colors provided than needed. Shortening color palette.")
      geom.colors <- geom.colors[1:pal.len]
      if (reverse.colors) geom.colors <- rev(geom.colors)
    }

    if (length(geom.colors) < pal.len) {
      warning("Too less colors provided for plot. Using default color palette.")
      plot <- uselegendscale(plot, labels, bw.figure, ltypes)
    } else {
      plot <- usenormalscale(plot, geom.colors, labels, bw.figure, ltypes)
    }
  } else {
    plot <- uselegendscale(plot, labels, bw.figure, ltypes)
  }
  return(plot)
}


#' @title Save ggplot-figure for print publication
#' @name save_plot
#'
#' @description Convenient function to save the last ggplot-figure in
#'                high quality for publication.
#'
#' @param filename the name of the output file; filename must end with one
#'          of the following acceptes file types: ".png", ".jpg", ".svg" or ".tif".
#' @param fig the plot that should be saved. By default, the last plot is saved.
#' @param width the width of the figure, in centimetres
#' @param height the height of the figure, in centimetres
#' @param dpi resolution in dpi (dots per inch). Ignored for vector formats, such as ".svg".
#' @param label.size fontsize of value labels inside plot area
#' @param axis.textsize fontsize of axis labels
#' @param axis.titlesize fontsize of axis titles
#' @param legend.textsize fontsize of legend labels
#' @param legend.titlesize fontsize of legend title
#' @param legend.itemsize size of legend's item (legend key), in centimetres.
#'
#' @inheritParams sjp.setTheme
#' @inheritParams set_theme
#'
#' @note This is a convenient function with some default settings that should
#'         come close to most of the needs for fontsize and scaling in figures
#'         when saving them for printing or publishing. It uses cairographics
#'         anti-aliasing (see \code{\link[grDevices]{png}}).
#'
#' @import ggplot2
#' @importFrom grDevices png jpeg tiff dev.off cm svg
#' @export
save_plot <- function(filename,
                      fig = ggplot2::last_plot(),
                      width = 12,
                      height = 9,
                      dpi = 300,
                      theme = ggplot2::theme_get(),
                      label.size = 2.4,
                      axis.textsize = .8,
                      axis.titlesize = .75,
                      legend.textsize = .6,
                      legend.titlesize = .65,
                      legend.itemsize = .5) {
  # -------------------------
  # get file extension
  # -------------------------
  ext <- tolower(substring(filename,
                           regexpr("\\.[^\\.]*$", filename) + 1,
                           nchar(filename)))
  # -------------------------
  # valid file ytpe?
  # -------------------------
  if (!ext %in% c("png", "jpg", "tif", "svg")) {
    stop("filetype must be one of `.png`, `.jpg`, '.svg' or `.tif`.", call. = F)
  }
  # -------------------------
  # set printable theme, adjust font sizes.
  # this is the most critical point...
  # -------------------------
  sjp.setTheme(base = theme,
    geom.label.color = "black",
    axis.title.color = "black",
    axis.textcolor = "black",
    legend.title.color = "black",
    legend.color = "black",
    geom.label.size = label.size,
    axis.textsize = axis.textsize,
    axis.title.size = axis.titlesize,
    legend.size = legend.textsize,
    legend.title.size = legend.titlesize,
    legend.item.size = legend.itemsize
  )
  # -------------------------
  # prapare save
  # -------------------------
  if (ext == "png")
    grDevices::png(filename = filename,
        width = width,
        height = height,
        units = "cm",
        res = dpi,
        type = "cairo")
  else if (ext == "jpg")
    grDevices::jpeg(filename = filename,
         width = width,
         height = height,
         units = "cm",
         res = dpi,
         type = "cairo")
  else if (ext == "tif")
    grDevices::tiff(filename = filename,
                    width = width,
                    height = height,
                    units = "cm",
                    res = dpi,
                    type = "cairo")
  else if (ext == 'svg')
    grDevices::svg(filename = filename,
                   width = width / grDevices::cm(1),
                   height = height / grDevices::cm(1))

  # print plot to device
  graphics::plot(fig)
  # close device
  grDevices::dev.off()
}
