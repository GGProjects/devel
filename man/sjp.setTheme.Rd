% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sjPlotSetTheme.R
\name{sjp.setTheme}
\alias{sjp.setTheme}
\title{Set global theme options for sjp-functions}
\usage{
sjp.setTheme(base = theme_grey(), theme.font = NULL,
  title.color = "black", title.size = 1.2, title.align = "left",
  title.vjust = NULL, geom.outline.color = NULL, geom.outline.size = 0,
  geom.boxoutline.size = 0.5, geom.boxoutline.color = "black",
  geom.alpha = 1, geom.linetype = 1, geom.errorbar.size = 0.7,
  geom.errorbar.linetype = 1, geom.label.color = NULL,
  geom.label.size = 4, geom.label.alpha = 1, geom.label.angle = 0,
  axis.title.color = "grey30", axis.title.size = 1.1,
  axis.title.x.vjust = NULL, axis.title.y.vjust = NULL, axis.angle.x = 0,
  axis.angle.y = 0, axis.angle = NULL, axis.textcolor.x = "grey30",
  axis.textcolor.y = "grey30", axis.textcolor = NULL,
  axis.linecolor.x = NULL, axis.linecolor.y = NULL, axis.linecolor = NULL,
  axis.line.size = 0.5, axis.textsize.x = 1, axis.textsize.y = 1,
  axis.textsize = NULL, axis.tickslen = NULL, axis.tickscol = NULL,
  axis.ticksmar = NULL, axis.ticksize.x = NULL, axis.ticksize.y = NULL,
  panel.backcol = NULL, panel.bordercol = NULL, panel.col = NULL,
  panel.major.gridcol = NULL, panel.minor.gridcol = NULL,
  panel.gridcol = NULL, panel.gridcol.x = NULL, panel.gridcol.y = NULL,
  panel.major.linetype = 1, panel.minor.linetype = 1, plot.backcol = NULL,
  plot.bordercol = NULL, plot.col = NULL, plot.margins = NULL,
  legend.pos = "right", legend.just = NULL, legend.inside = FALSE,
  legend.size = 1, legend.color = "black", legend.title.size = 1,
  legend.title.color = "black", legend.title.face = "bold",
  legend.backgroundcol = "white", legend.bordercol = "white",
  legend.item.size = NULL, legend.item.backcol = "grey90",
  legend.item.bordercol = "white")
}
\arguments{
\item{base}{base theme where theme is built on. By default, all
metrics from \code{theme_gray()} are used. See 'Details'.}

\item{theme.font}{base font family for the plot.}

\item{title.color}{color of plot title. Default is \code{"black"}.}

\item{title.size}{size of plot title. Default is 1.3.}

\item{title.align}{alignment of plot title. Must be one of \code{"left"} (default),
\code{"center"} or \code{"right"}. You may use initial letter only.}

\item{title.vjust}{numeric, vertical adjustment for plot title.}

\item{geom.outline.color}{color of geom outline. Only applies, if \code{geom.outline.size}
is larger than 0.}

\item{geom.outline.size}{size of bar outlines. Default is 0.1. Use
size of \code{0} to remove geom outline.}

\item{geom.boxoutline.size}{size of outlines and median bar especially for boxplots.
Default is 0.5. Use size of \code{0} to remove boxplot outline.}

\item{geom.boxoutline.color}{color of outlines and median bar especially for boxplots.
Only applies, if \code{geom.boxoutline.size} is larger than 0.}

\item{geom.alpha}{specifies the transparancy (alpha value) of geoms}

\item{geom.linetype}{linetype of line geoms. Default is \code{1} (solid line).}

\item{geom.errorbar.size}{size (thickness) of error bars. Default is \code{0.8}}

\item{geom.errorbar.linetype}{linetype of error bars. Default is \code{1} (solid line).}

\item{geom.label.color}{color of geom's value and annotation labels}

\item{geom.label.size}{size of geom's value and annotation labels}

\item{geom.label.alpha}{alpha level of geom's value and annotation labels}

\item{geom.label.angle}{angle of geom's value and annotation labels}

\item{axis.title.color}{color of x- and y-axis title labels}

\item{axis.title.size}{size of x- and y-axis title labels}

\item{axis.title.x.vjust}{numeric, vertical adjustment of x-axis-title.}

\item{axis.title.y.vjust}{numeric, vertical adjustment of y-axis-title.}

\item{axis.angle.x}{angle for x-axis labels}

\item{axis.angle.y}{angle for y-axis labels}

\item{axis.angle}{angle for x- and y-axis labels. If set, overrides both \code{axis.angle.x} and \code{axis.angle.y}}

\item{axis.textcolor.x}{color for x-axis labels. If not specified, a default dark gray
color palette will be used for the labels.}

\item{axis.textcolor.y}{color for y-axis labels. If not specified, a default dark gray
color palette will be used for the labels.}

\item{axis.textcolor}{color for both x- and y-axis labels.
If set, overrides both \code{axis.textcolor.x} and \code{axis.textcolor.y}}

\item{axis.linecolor.x}{color of x-axis border}

\item{axis.linecolor.y}{color of y-axis border}

\item{axis.linecolor}{color for both x- and y-axis borders.
If set, overrides both \code{axis.linecolor.x} and \code{axis.linecolor.y}.}

\item{axis.line.size}{size (thickness) of axis lines. Only affected, if \code{axis.linecolor}
is set.}

\item{axis.textsize.x}{size of x-axis labels}

\item{axis.textsize.y}{size of y-axis labels}

\item{axis.textsize}{size for both x- and y-axis labels.
If set, overrides both \code{axis.textsize.x} and \code{axis.textsize.y}.}

\item{axis.tickslen}{length of axis tick marks}

\item{axis.tickscol}{color of axis tick marks}

\item{axis.ticksmar}{margin between axis labels and tick marks}

\item{axis.ticksize.x}{size of tick marks at x-axis.}

\item{axis.ticksize.y}{size of tick marks at y-axis.}

\item{panel.backcol}{color of the diagram's background}

\item{panel.bordercol}{color of whole diagram border (panel border)}

\item{panel.col}{color of both diagram's border and background.
If set, overrides both \code{panel.bordercol} and \code{panel.backcol}.}

\item{panel.major.gridcol}{color of the major grid lines of the diagram background}

\item{panel.minor.gridcol}{color of the minor grid lines of the diagram background}

\item{panel.gridcol}{color for both minor and major grid lines of the diagram background.
If set, overrides both \code{panel.major.gridcol} and \code{panel.minor.gridcol}.}

\item{panel.gridcol.x}{see \code{panel.gridcol}.}

\item{panel.gridcol.y}{see \code{panel.gridcol}.}

\item{panel.major.linetype}{line type for major grid lines}

\item{panel.minor.linetype}{line type for minor grid lines}

\item{plot.backcol}{color of the plot's background}

\item{plot.bordercol}{color of whole plot's border (panel border)}

\item{plot.col}{color of both plot's region border and background.
If set, overrides both \code{plot.backcol} and \code{plot.bordercol}.}

\item{plot.margins}{numeric vector of length 4, indicating the top, right,
bottom and left margin of the plot region.}

\item{legend.pos}{position of the legend, if a legend is drawn.
\describe{
  \item{\emph{legend outside plot}}{
    Use \code{"bottom"}, \code{"top"}, \code{"left"} or \code{"right"}
    to position the legend above, below, on the left or right side
    of the diagram. Right positioning is default.
  }
  \item{\emph{legend inside plot}}{
    If \code{legend.inside = TRUE}, legend can be placed inside
    plot. Use \code{"top left"}, \code{"top right"}, \code{"bottom left"}
    and \code{"bottom right"} to position legend in any of these corners,
    or a two-element numeric vector with values from 0-1. See also
    \code{legend.inside}.
  }
}}

\item{legend.just}{justification of legend, relative to its position (\code{"center"} or
two-element numeric vector with values from 0-1. By default (outside legend),
justification is centered. If legend is inside and justification not specified,
legend justification is set according to legend position.}

\item{legend.inside}{logical, use \code{TRUE} to put legend inside the plotting area. See \code{legend.pos}.}

\item{legend.size}{text size of the legend. Default is 1. Relative size, so
recommended values are from 0.3 to 2.5}

\item{legend.color}{color of the legend labels}

\item{legend.title.size}{text size of the legend title}

\item{legend.title.color}{color of the legend title}

\item{legend.title.face}{font face of the legend title. By default, \code{"bold"} face is used.}

\item{legend.backgroundcol}{fill color of the legend's background. Default is \code{"white"}, so no visible background is drawn.}

\item{legend.bordercol}{color of the legend's border. Default is \code{"white"}, so no visible border is drawn.}

\item{legend.item.size}{size of legend's item (legend key), in centimetres.}

\item{legend.item.backcol}{fill color of the legend's item-background. Default is \code{"grey90"}.}

\item{legend.item.bordercol}{color of the legend's item-border. Default is \code{"white"}.}
}
\value{
The customized theme object, or \code{NULL}, if a ggplot-theme was used.
}
\description{
Set global theme options for sjp-functions.
}
\details{
The \code{base} argument is intended to select a ggplot-theme
           as base for further modifications (which can be triggered
           via the various function arguments).
}
\examples{
\dontrun{
library(sjmisc)
data(efc)
# set sjPlot-defaults, a slightly modification
# of the ggplot base theme
sjp.setTheme()

# legends of all plots inside
sjp.setTheme(legend.pos = "top left",
             legend.inside = TRUE)
sjp.xtab(efc$e42dep, efc$e16sex)

# Use classic-theme. you may need to
# load the ggplot2-library.
library(ggplot2)
sjp.setTheme(base = theme_classic())
sjp.frq(efc$e42dep)

# adjust value labels
sjp.setTheme(geom.label.size = 3.5, geom.label.color = "#3366cc",
             geom.label.angle = 90)
# hjust-aes needs adjustment for this
update_geom_defaults('text', list(hjust = -0.1))
sjp.xtab(efc$e42dep, efc$e16sex, vjust = "center", hjust = "center")

# Create own theme based on classic-theme
sjp.setTheme(base = theme_classic(), axis.linecolor = "grey50",
             axis.textcolor = "#6699cc")
sjp.frq(efc$e42dep)}

}
\references{
\itemize{
             \item \href{http://zevross.com/blog/2014/08/04/beautiful-plotting-in-r-a-ggplot2-cheatsheet-3/}{Beautiful plotting in R: A ggplot2 cheatsheet}
             \item \href{http://minimaxir.com/2015/02/ggplot-tutorial/}{An Introduction on How to Make Beautiful Charts With R and ggplot2}
            }
}
\seealso{
\href{http://www.strengejacke.de/sjPlot/custplot/}{sjPlot manual: customize plot appearance}
}
