\name{plot.Ktest}
\alias{plot.Ktest}
\title{Plot K-functions used in test on second-order stationarity}
\usage{
  plot.Ktest(x, styles,
    theostyle = style(lty = "dotted", col = "black", alpha = 1),
    ...)
}
\arguments{
  \item{x}{result of a \code{\link{sos.test}} or a
  \code{\link{twosample.K.test}}, an object of class
  \code{"Ktest"}}

  \item{styles}{named list of \code{\link{style}} lists,
  defines how the K-function estimates are plotted, see
  Details,}

  \item{theostyle}{plot style for the reference
  \eqn{K}-function of a Poisson point process. To supress
  plotting of the reference curve, let \code{theostyle =
  NULL}.}

  \item{...}{further arguments passed to plot methods,}
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
  themselve are \code{\link{style}} lists with elements
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
bei.quads <- quadshilo(bei, nx = 8, ny = 4, minpoints = 30)
beitest <- sos.test(bei.ml, qsets = bei.quads, r0 =25 )
beistyle <- list(hi = style(col = "red"), lo = style(col = "blue"))

plot(beitest, beistyle, main = "bei.ml: K estimated on quadrats")
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

