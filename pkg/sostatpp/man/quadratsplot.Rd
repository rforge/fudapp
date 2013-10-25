\name{quadratsplot}
\alias{quadratsplot}
\title{Plot a point pattern with test quadrats}
\usage{
  quadratsplot(x, qsets, styles = NULL, ..., main = NULL,
    backtransformed = FALSE)
}
\arguments{
  \item{x}{point pattern}

  \item{qsets}{the quadrat sets, a \emph{named} list of
  lists of windows (\code{"\link{owin}"}) or tessellations
  (\pkg{spatstat}-object \code{"\link[spatstat]{tess}"})}

  \item{styles}{optional a \emph{named} list of
  \code{\link{simplist}}s, see Details,}

  \item{...}{further plot parameters}

  \item{main}{title to be put above the plot. Default:
  tries to guess title from call.}

  \item{backtransformed}{logical, if \code{TRUE}
  backtransform pattern and quadrats. Requires pattern of
  sos-type \code{"t"}. #'}
}
\description{
  A plot of a point pattern, with subdivision into
  quadrats. Several sets of quadrats can be plotted in the
  same plot, distinguished by different background colour.
}
\details{
  Background colour and coulour intensity of the quadrats
  are determined by the parameters \code{col.win} and
  \code{alpha.win}, see \code{\link{plot.sostyppp}}. These
  plot parameters can be given as \code{\link{simplist}}s
  or explicitely. Both styles and explicite parameters can
  be given as named lists, the names are then matched with
  the names of the quadrat sets. Quadrats that have not
  been assigned
}
\examples{
# quadrat plot for the beilschmiedia pattern
beiquads <- twoquadsets(bei, nx = 8, ny = 4, minpoints = 30)
beistyle <- list(hi = simplist(col.win = "red"), lo = simplist(col.win = "blue"))

quadratsplot(bei, beiquads, beistyle, alpha.win = 0.2, main = "Beilschmiedia: quadrats")

# does the same colours:

quadratsplot(bei, beiquads, col.win = list(hi = "red", lo = "blue"),
 alpha.win = 0.2, main = "Beilschmiedia: quadrats", pch = 16, cex = .3)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

