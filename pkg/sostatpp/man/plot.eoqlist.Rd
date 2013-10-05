\name{plot.eoqlist}
\alias{plot.eoqlist}
\title{Plot a list of template K-functions estimated on quadrats}
\usage{
  \method{plot}{eoqlist} (x, style = NULL,
    corrections = "iso", minn = 10, minm = 1, ...,
    add = FALSE,
    theostyle = list(lwd = 1, lty = "dotted", col = "black"),
    labline = 2.4)
}
\arguments{
  \item{x}{list of summary function estimates, object of
  class \code{eoqlist}}

  \item{style}{optional list of plot options, as in
  \code{summaryplot.fdsample}}

  \item{corrections}{character, which edge-corrected
  version to pick}

  \item{minn}{integer, minimal number of points on quadrat
  to allow for printing of the individual \eqn{K}-function,
  defaults to 10}

  \item{minm}{integer, minimal number of "valid" quadrats
  with at least \code{minn} points}

  \item{...}{further arguments for \code{\link{plot}},}

  \item{add}{logical, whether to add to current plot.
  Defaults to FALSE.}

  \item{theostyle}{plot options for the summary function of
  a Poisson point process (CSR), a list with default
  elements \code{col}, \code{lwd} and \code{lty}, see
  \code{plot.fdsample}. If \code{theostyle == NULL}, the
  CSR-curve is not plotted.}

  \item{labline}{numerical, where to plot the axis labels}
}
\description{
  Plot a list of K-function estimates, as obtained by
  \code{\link{estOnQuadrats}}
}
\details{
  This method, as well as class \code{eoqlist}, is likely
  to be replaced in a future version
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

