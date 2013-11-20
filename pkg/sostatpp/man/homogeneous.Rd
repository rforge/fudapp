\name{homogeneous}
\alias{homogeneous}
\title{Mark point pattern as homogeneous}
\usage{
  homogeneous(X, type = "h", intensity = NULL)
}
\arguments{
  \item{X}{the original point pattern}

  \item{type}{optional character. If set to "hs", the
  patterns is preferentially evaluated as "rescaled",
  otherwise as "reweighted" (default).}

  \item{intensity}{optional, constant intensity.}
}
\value{
  A homogeneous s.o.s. typed point pattern (object of class
  \code{"\link{sostyppp}"}), having typemarks with elements
  \code{intensity} (estimated intensity) and
  \code{invscale} (square root of intensity).
}
\description{
  Add type information for second-order stationary point
  processes.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  related functions: \code{\link{rescaled}},
  \code{\link{retransformed}}, \code{\link{reweighted}}

  \code{\link{sostyppp}} for details on the class.
}

