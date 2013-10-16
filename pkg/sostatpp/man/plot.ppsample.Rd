\name{plot.ppsample}
\alias{plot.ppsample}
\title{Plot a sample of point patterns}
\usage{
  \method{plot}{ppsample} (x, ..., add = FALSE,
    allinone = TRUE)
}
\arguments{
  \item{x}{the \code{ppsample} object that is to be
  plotted.}

  \item{...}{arguments passed to the plot methods of the
  point patterns in \code{x}.}

  \item{add}{logical, if \code{TRUE} add to the current
  plot (default: \code{FALSE})}

  \item{allinone}{logical, if \code{FALSE} start a new plot
  for every pattern (default: \code{TRUE}).}
}
\description{
  Plots all point patterns contained in an \code{ppsample}
  object.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{plot.ppp}} and \code{\link{plot.sostyppp}}
  for the plot methods of elements in the sample.
}

