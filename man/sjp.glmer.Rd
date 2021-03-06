% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sjPlotGLME.R
\name{sjp.glmer}
\alias{sjp.glmer}
\title{Plot estimates, predictions or effects of generalized linear mixed effects models}
\usage{
sjp.glmer(fit, type = "re", vars = NULL, ri.nr = NULL,
  group.estimates = NULL, remove.estimates = NULL, emph.grp = NULL,
  sample.n = NULL, sort.est = NULL, title = NULL, legend.title = NULL,
  axis.labels = NULL, axis.title = NULL, geom.colors = "Set1",
  geom.size = NULL, show.values = TRUE, show.p = TRUE, show.ci = FALSE,
  show.legend = FALSE, show.intercept = FALSE,
  string.interc = "(Intercept)", show.scatter = TRUE, point.alpha = 0.2,
  point.color = NULL, jitter.ci = FALSE, fade.ns = FALSE,
  axis.lim = NULL, digits = 2, vline.type = 2, vline.color = "grey70",
  facet.grid = TRUE, free.scale = FALSE, y.offset = 0.1,
  prnt.plot = TRUE, ...)
}
\arguments{
\item{fit}{a fitted model as returned by the \code{\link[lme4]{glmer}}-function.}

\item{type}{type of plot. Use one of following:
\describe{
  \item{\code{"re"}}{(default) for conditional modes (odds or incidents ratios) of random effects}
  \item{\code{"fe"}}{for odds or incidents ratios of fixed effects}
  \item{\code{"fe.cor"}}{for correlation matrix of fixed effects}
  \item{\code{"re.qq"}}{for a QQ-plot of random effects (random effects quantiles against standard normal quantiles)}
  \item{\code{"fe.slope"}}{to plot probability or incidents curves (predicted probabilities or incidents) of all fixed effects coefficients. Use \code{facet.grid} to decide whether to plot each coefficient as separate plot or as integrated faceted plot. See 'Details'.}
  \item{\code{"ri.slope"}}{to plot probability or incidents curves (predicted probabilities or incidents) of random intercept variances for all fixed effects coefficients. Use \code{facet.grid} to decide whether to plot each coefficient as separate plot or as integrated faceted plot. See 'Details'.}
  \item{\code{"rs.ri"}}{for fitted probability curves (predicted probabilities) indicating the random slope-intercept pairs. Use this to visualize the random parts of random slope-intercept (or repeated measure) models. When having too many groups, use \code{sample.n} argument.}
  \item{\code{"eff"}}{to plot marginal effects of predicted probabilities or incidents for each fixed term, where remaining co-variates are set to the mean. Use \code{facet.grid} to decide whether to plot each coefficient as separate plot or as integrated faceted plot. See 'Details'.}
  \item{\code{"pred"}}{to plot predicted probabilities or incidents for the response, related to specific model predictors and conditioned on random effects. See 'Details'.}
  \item{\code{"pred.fe"}}{to plot predicted probabilities or incidents for the response, related to specific model predictors, only for fixed effects. See 'Details'.}
  \item{\code{"ma"}}{to check model assumptions. Note that only argument \code{fit} applies to this plot type. All other arguments are ignored.}
}}

\item{vars}{numeric vector with column indices of selected variables or a character vector with
variable names of selected variables from the fitted model, which should be used to plot
- depending on \code{type} - estimates, fixed effects slopes or predicted values
(mean, probabilities, incidents rates, ...). See 'Examples'.}

\item{ri.nr}{numeric vector. If \code{type = "re"} or \code{type = "ri.slope"},
and fitted model has more than one random intercept, \code{ri.nr} indicates
which random effects of which random intercept (or: which list elements
of \code{\link[lme4]{ranef}}) will be plotted. Default is \code{NULL},
so all random effects will be plotted.}

\item{group.estimates}{numeric or character vector, indicating a group identifier for
each estimate. Dots and confidence intervals of estimates are coloured
according to their group association. See 'Examples'.}

\item{remove.estimates}{character vector with coefficient names that indicate
which estimates should be removed from the plot.
\code{remove.estimates = "est_name"} would remove the estimate \emph{est_name}. Default
is \code{NULL}, i.e. all estimates are printed.}

\item{emph.grp}{numeric vector with index numbers of grouping levels (from random effect).
If \code{type = "ri.slope"} and \code{facet.grid = FALSE},
an integrated plot of predicted probabilities of fixed effects resp. fixed
effects slopes for each grouping level is plotted. To better find
certain groups, use this argument to emphasize these groups in the plot.
See 'Examples'.}

\item{sample.n}{numeric vector. only applies, if \code{type = "rs.ri"}. If
plot has many random intercepts (grouping levels), overplotting of
regression lines may occur. In this case, consider random sampling of
grouping levels. If \code{sample.n} is of length 1, a random sample
of \code{sample.n} observation is selected to plot random intercepts.
If \code{sample.n} is of length > 1, random effects indicated by
the values in \code{sample.n} are selected to plot random effects.
Use the latter option to always select a fixed, identical set of
random effects for plotting (useful when ecomparing multiple models).}

\item{sort.est}{determines in which way estimates are sorted in the plot:
\itemize{
  \item If \code{NULL} (default), no sorting is done and estimates are sorted in order of model coefficients.
  \item If \code{sort.est = "sort.all"}, estimates are re-sorted for each coefficient (only applies if \code{type = "re"} and \code{facet.grid = FALSE}), i.e. the estimates of the random effects for each predictor are sorted and plotted to an own plot.
  \item If \code{type = "fe"} or \code{type = "fe.std"}, \code{TRUE} will sort estimates
  \item If \code{type = "re"}, specify a predictor's / coefficient's name to sort estimates according to this coefficient.
  }
  See 'Examples'.}

\item{title}{character vector with one or more labels that are used as plot title.}

\item{legend.title}{character vector, used as title for the plot legend. Note that
only some plot types have legends (e.g. \code{type = "pred"} or when
grouping estimates with \code{group.estimates}).}

\item{axis.labels}{character vector with labels for the model terms, used as axis labels.
For mixed models, should either be vector of fixed effects variable labels
(if \code{type = "fe"} or \code{type = "fe.std"}) or a vector of group (value)
labels from the random intercept's categories (if \code{type = "re"}).}

\item{axis.title}{character vector of length one or two (depending on
the plot function and type), used as title(s) for the x and y axis.
If not specified, a default labelling  is chosen. To set multiple
axis titles (e.g. with \code{type = "eff"} for many predictors),
\code{axis.title} must be a character vector of same length of plots
that are printed. In this case, each plot gets an own axis title
(applying, for instance, to the y-axis for \code{type = "eff"}).}

\item{geom.colors}{user defined color palette for geoms. If \code{group.estimates}
is \emph{not} specified, must either be vector with two color values or a specific
color palette code (see 'Details' in \code{\link{sjp.grpfrq}}). Else, if
\code{group.estimates} is specified, \code{geom.colors} must be a vector
of same length as groups. See 'Examples'.}

\item{geom.size}{size resp. width of the geoms (bar width, line thickness or point size, 
depending on plot type and function). Note that bar and bin widths mostly 
need smaller values than dot sizes.}

\item{show.values}{logical, whether values should be plotted or not.}

\item{show.p}{logical, adds significance levels to values, or value and 
variable labels.}

\item{show.ci}{logical, if \code{TRUE}, depending on \code{type}, a confidence
interval or region is added to the plot.}

\item{show.legend}{logical, if \code{TRUE}, and depending on plot type and
function, a legend is added to the plot.}

\item{show.intercept}{logical, if \code{TRUE}, the intercept of the fitted model is also plotted.
Default is \code{FALSE}. For \code{glm}'s, please note that due to exponential 
transformation of estimates, the intercept in some cases can not be calculated, thus the
function call is interrupted and no plot printed.}

\item{string.interc}{string, axis label of intercept estimate. Only applies,
if \code{show.intercept = TRUE} and \code{axis.labels} is not \code{NULL}.}

\item{show.scatter}{logical, if \code{TRUE} (default), adds a scatter plot of
data points to the plot. Only applies for slope-type or predictions plots.
For most plot types, dots are jittered to avoid overplotting, hence the 
points don't reflect exact values in the data.}

\item{point.alpha}{alpha value of point-geoms in the scatter plots. Only applies,
if \code{show.scatter = TRUE}.}

\item{point.color}{color of of point-geoms in the scatter plots. Only applies,
if \code{show.scatter = TRUE}.}

\item{jitter.ci}{logical, if \code{TRUE} and \code{show.ci = TRUE} and confidence
bands are displayed as error bars, adds jittering to lines and error bars
to avoid overlapping.}

\item{fade.ns}{if \code{TRUE}, non significant estimates will be printed in slightly faded colors.}

\item{axis.lim}{numeric vector of length 2, defining the range of the plot axis.
Depending on plot type, may effect either x- or y-axis, or both.
For multiple plot outputs (e.g., from \code{type = "eff"} or 
\code{type = "slope"} in \code{\link{sjp.glm}}), \code{axis.lim} may
also be a list of vectors of length 2, defining axis limits for each
plot (only if non-faceted).}

\item{digits}{numeric, amount of digits after decimal point when rounding estimates and values.}

\item{vline.type}{linetype of the vertical "zero point" line. Default is \code{2} (dashed line).}

\item{vline.color}{color of the vertical "zero point" line. Default value is \code{"grey70"}.}

\item{facet.grid}{\code{TRUE} to arrange the lay out of of multiple plots 
in a grid of an integrated single plot. This argument calls 
\code{\link[ggplot2]{facet_wrap}} or \code{\link[ggplot2]{facet_grid}}
to arrange plots. Use \code{\link{plot_grid}} to plot multiple plot-objects 
as an arranged grid with \code{\link[gridExtra]{grid.arrange}}.}

\item{free.scale}{if \code{TRUE} and \code{facet.grid = TRUE}, each facet grid
gets its own fitted scale. If \code{free.scale = FALSE}, each facet in
the grid has the same scale range.}

\item{y.offset}{numeric, offset for text labels when their alignment is adjusted 
to the top/bottom of the geom (see \code{hjust} and \code{vjust}).}

\item{prnt.plot}{logical, if \code{TRUE} (default), plots the results as graph. Use \code{FALSE} if you don't
want to plot any graphs. In either case, the ggplot-object will be returned as value.}

\item{...}{other arguments passed down to further functions. Currently, following
arguments are supported:
\describe{
  \item{\code{?effects::effect}}{
    Any arguments accepted by the \code{\link[effects]{effect}} resp.
    \code{\link[effects]{allEffects}} function, for \code{type = "eff"}.
  }
  \item{\code{width}}{The \code{width}-argument for error bars.}
  \item{\code{alpha}}{The \code{alpha}-argument for confidence bands.}
  \item{\code{level}}{The \code{level}-argument confidence bands.}
}}
}
\value{
(Insisibily) returns, depending on the plot type
         \itemize{
           \item The ggplot-object (\code{plot}). For multiple plots and if \code{facet.grid = FALSE}) a \code{plot.list} is returned.
           \item A data frame \code{data} with the data used to build the ggplot-object(s), or a list of data frames (\code{data.list}).
           }
}
\description{
By default, this function plots estimates (odds, risk or incidents
               ratios, i.e. exponentiated coefficients, depending on family and
               link function)
               with confidence intervals of either fixed effects or random effects of
               generalized linear mixed effects models (that have been fitted with the
               \code{\link[lme4]{glmer}}-function of the \pkg{lme4}-package).
               Furthermore, this function also plots predicted probabilities /
               incidents or diagnostic plots.
}
\details{
\describe{
           \item{\code{type = "re"}}{plots the conditional modes of the random
           effects, inclduing predicion intervals. It basically does the same
           as \code{dotplot(exp(ranef(fit, condVar = TRUE)[[i]])}, where \code{i}
           denotes the random effect index.}
           \item{\code{type = "fe.slope"}}{the predicted values
           are based on the fixed effects intercept's estimate and each specific
           fixed term's estimate. All other fixed effects are set to zero (i.e. ignored),
           which corresponds to \code{family(fit)$linkinv(eta = b0 + bi * xi)} (where \code{xi}
           is the estimate of fixed effects and \code{b0} is the intercept of
           the fixed effects; the inverse link-function is used). This plot type
           may give similar results as \code{type = "pred"}, however, \code{type = "fe.slope"}
           does not adjust for other predictors.}
           \item{\code{type = "eff"}}{plots the marginal effects of model predictors.
           Unlike \code{type = "fe.slope"}, the predicted values computed by
           \code{type = "eff"} are adjusted for all co-variates, which are
           set to the mean, as returned by the \code{\link[effects]{allEffects}} function.
           You can pass further arguments down to \code{allEffects} for flexible
           function call via the \code{...}-argument.}
           \item{\code{type = "ri.slope"}}{the predicted values
           are based on the fixed effects intercept, plus each random intercept and
           each specific  fixed term's estimate. All other fixed effects are set to zero (i.e. ignored),
           which corresponds to \code{family(fit)$linkinv(eta = b0 + b0[r1-rn] + bi * xi)}
           (where \code{xi} is the estimate of fixed effects, \code{b0} is the intercept of
           the fixed effects and \code{b0[r1-rn]} are all random intercepts).}
           \item{\code{type = "rs.ri"}}{the predicted values are based
           on the fixed effects intercept, plus each random intercept and
           random slope. This plot type is intended to plot the random part, i.e.
           the predicted probabilities or incident rates of each random slope
           for each random intercept.
           Since the random intercept specifies the deviance from the gloabl
           intercept, the global intercept is always included. In case of overplotting,
           use the \code{sample.n} argument to randomly sample a limited amount
           of groups.}
           \item{\code{type = "coef"}}{forest plot of joint fixed and random
           effect coefficients, as retrieved by \code{\link[lme4]{coef.merMod}},
           it's simply \code{\link[lme4]{ranef} + \link[lme4]{fixef}}.}
           \item{\code{type = "pred"} or \code{type = "pred.fe"}}{predicted
           values against response, only fixed effects or
           conditional on random intercept. It's calling
           \code{predict(fit, type = "response", re.form = NA)} resp.
           \code{predict(fit, type = "response", re.form = NULL)} to
           compute the values.
           This plot type requires the \code{vars} argument to select specific terms
           that should be used for the x-axis and - optional - as grouping factor.
           Hence, \code{vars} must be a character vector with the names of
           one or two model predictors. See 'Examples'.}
         }
}
\note{
\itemize{
         \item{Computation of p-values (if necessary) is based on normal-
               distribution assumption, treating the t-statistics as Wald
               z-statistics.}
         \item{Plot types use the inverse link-function to calculate predicted
               probabilites or incidents rates. Thus, this function should work
               with different model families and link functions; however, the
               plot or axis title may not use the exact terminology regarding
               model family or link function.}
         \item{Thanks go to Robert Reijntjes from
               Leiden University Medical Center for sharing R code that is used
               to compute fixed effects correlation matrices and qq-plots of
               random effects.}
       }
}
\examples{
library(lme4)
library(sjmisc)
# create binary response
sleepstudy$Reaction.dicho <- dicho(sleepstudy$Reaction, dich.by = "median")
# fit model
fit <- glmer(Reaction.dicho ~ Days + (Days | Subject),
             data = sleepstudy, family = binomial("logit"))

# simple plot
sjp.glmer(fit)

# sort by predictor Days
sjp.glmer(fit, sort.est = "Days")

data(efc)
# create binary response
efc$hi_qol <- dicho(efc$quol_5)
# prepare group variable
efc$grp = as.factor(efc$e15relat)
levels(x = efc$grp) <- get_labels(efc$e15relat)
# data frame for fitted model
mydf <- data.frame(hi_qol = to_factor(efc$hi_qol),
                   sex = to_factor(efc$c161sex),
                   education = to_factor(efc$c172code),
                   c12hour = efc$c12hour,
                   neg_c_7 = efc$neg_c_7,
                   grp = efc$grp)
# fit glmer
fit <- glmer(hi_qol ~ sex + c12hour + neg_c_7 + (1|grp),
             data = mydf, family = binomial("logit"))

# plot and sort fixed effects
sjp.glmer(fit, type = "fe", sort.est = TRUE)

# fit glmer, with categorical predictor with more than 2 levels
fit <- glmer(hi_qol ~ sex + education + c12hour + neg_c_7 + (1|grp),
             data = mydf, family = binomial("logit"))

# plot and sort fixed effects, axis labels automatically retrieved
sjp.glmer(fit, type = "fe", sort.est = TRUE)

# plot probability curves (predicted probabilities)
# for each covariate, grouped by random intercepts
# in integrated plots, emphasizing groups 1 and 4
sjp.glmer(fit, type = "ri.slope", emph.grp = c(1, 4), facet.grid = FALSE)

# plot probability curve (predicted probabilities)
# of fixed effect, only for coefficient "neg_c_7"
sjp.glmer(fit, type = "fe.slope", vars = "neg_c_7")

# plot predicted probabilities for response,
# related to model predictor, conditioned on random effects
sjp.glmer(fit, type = "pred", vars = "neg_c_7")

# plot predicted probabilities for response,
# related to model predictor, grouped
sjp.glmer(fit, type = "pred.fe", vars = c("neg_c_7", "sex"))

# non faceted, with ci
sjp.glmer(fit, type = "pred.fe", vars = c("neg_c_7", "education"),
          show.ci = TRUE, facet.grid = FALSE)

# predictions by gender and education
sjp.glmer(fit, type = "pred.fe", vars = c("neg_c_7", "sex", "education"))

}
\seealso{
\href{http://www.strengejacke.de/sjPlot/sjp.glmer/}{sjPlot manual: sjp.glmer}
}
