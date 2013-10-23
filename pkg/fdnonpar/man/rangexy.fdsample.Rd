\name{rangexy.fdsample}
\alias{rangexy.fdsample}
\title{Report x- and y-range, generic function}
\usage{
  rangexy.fdsample(x, finite = TRUE, ...)
}
\arguments{
  \item{x}{the data to be inspected}

  \item{finite}{logical, indicating if all non-finite
  elements should be omitted.}

  \item{...}{ignored, just for compatibility with generic
  function}
}
\value{
  A list with elements \code{x} and \code{y}, which are
  numeric vectors of length two.
}
\description{
  Range of \code{args} and \code{fvals} contained in an
  \code{fdsample} object, purpose: convenient way to find
  plot limits.
}
\details{
  If \code{finite} is \code{TRUE}, the minimum and maximum
  of all finite values is computed, and \code{NA} and
  \code{NaN} values are ignored.
}

