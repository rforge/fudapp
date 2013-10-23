\name{mean.fdsample}
\alias{mean.fdsample}
\alias{median.fdsample}
\alias{quantile.fdsample}
\title{Generic summary functions}
\usage{
  \method{mean}{fdsample} (x, ..., trim = 0, na.rm = FALSE)

  \method{median}{fdsample} (x, ..., na.rm = FALSE)

  \method{quantile}{fdsample} (x, probs = seq(0, 1, 0.25),
    ..., na.rm = FALSE, names = FALSE, type = 7)
}
\arguments{
  \item{x}{an object of class \code{\link{fdsample}}}

  \item{trim}{the fraction (0 to 0.5) of observations to be
  trimmed from each end of \code{x} before the mean is
  computed. Values of trim outside that range are taken as
  the nearest endpoint.}

  \item{na.rm}{logical; if true, any NA and NaN's are
  removed from \code{x} before the quantiles are computed.}

  \item{...}{further arguments passed to or from other
  methods.}

  \item{probs}{numeric vector of probabilities with values
  in [0,1].}

  \item{names}{logical; if true, the result has a names
  attribute.}

  \item{type}{an integer between 1 and 9 selecting one of
  the nine quantile algorithms, see the documentation of
  \code{\link{quantile.default}}}
}
\value{
  an \code{\link{fdsample}} object, where \code{fvals}
  represents the values of the summary function(s)
}
\description{
  Calculate summary functions (mean, median or quantiles)
  of the function values pointwise (for each argument
  value).
}
\examples{
str(mean(fuda))
}
\seealso{
  \code{\link{mean}}, \code{\link{median}}.
  \code{\link{quantile}}
}

