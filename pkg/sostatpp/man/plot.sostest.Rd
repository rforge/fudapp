\name{plot.sostest}
\alias{plot.sostest}
\title{Plot K-functions used in test on second-order stationarity}
\usage{
  \method{plot}{sostest} (x, styles,
    theostyle = simplist(lty = "dotted", col = "black", alpha = 1),
    ..., labline = 2.4)
}
\arguments{
  \item{x}{result of a \code{\link{sos.test}} or a
  \code{\link{twosample.K.test}}, an object of class
  \code{"sostest"}}

  \item{styles}{named list of \code{\link{simplist}}s,
  defines how the K-function estimates are plotted, see
  Details,}

  \item{theostyle}{\code{simplist}, the plot style for the
  reference \eqn{K}-function of a Poisson point process. To
  supress plotting of the reference curve, let
  \code{theostyle = NULL}.}

  \item{...}{further arguments passed to plot methods,}

  \item{labline}{numeric, controls the position of the axis
  labels: first entry in graphic parameter \code{mgp}.}
}
\description{
  Plot the K-function estimates used in a test on
  second-order stationarity, \code{\link{sos.test}}.
}
\details{
  The estimates of the \eqn{K}-function on the quadrats are
  plotted together with the group means. The
  \eqn{K}-function of a Poisson point process is also
  present in the plot, unless \code{theostyle = NULL}.

  Colours and line attributes for plotting K-function
  estimates are controlled by argument \code{styles}, which
  contains two elements. For plotting the result of a
  \code{sos.test}, the have to be named \code{hi} and
  \code{lo}, for the result of a \code{twosample.K.test},
  the names are \code{x} and \code{y}. The elements
  themselve are \code{\link{simplist}}s with elements
  \tabular{ll}{ \code{col} \tab colour for the individual
  \eqn{K}-functions \cr\code{alpha} \tab optional,
  alpha-value for the individual \eqn{K}-functions,
  defaults to \code{0.5} \cr\code{lwd}\tab optional, line
  width for plot of \eqn{K}-functions \cr\code{lty}\tab
  optional, line type for plot of \eqn{K}-functions }
}
\examples{
# testing beilschmiedia pattern on reweighted second-order stationarity
bei.ml <- reweighted(bei, intensity = bei.intens.maxlik)
bei.quads <- twoquadsets(bei, nx = 8, ny = 4, minpoints = 30)
beitest <- sos.test(bei.ml, qsets = bei.quads, rmax =25 )
beistyle <- list(hi = simplist(col = "red", alpha = .5),
                lo = simplist(col = "blue", alpha = .5))

plot(beitest, beistyle, main = "bei.ml: K estimated on quadrats", ylim = c(0,3000))
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

