\name{ashomogeneous}
\alias{ashomogeneous}
\title{Mark point pattern as homogeneous}
\usage{
  ashomogeneous(X, type = "h", lambda = NULL)
}
\arguments{
  \item{X}{the original point pattern}

  \item{type}{optional character. If set to "hs", the
  patterns is preferentially evaluated as "rescaled",
  otherwise as "reweighted" (default).}

  \item{lambda}{optional, constant lambda.}
}
\value{
  A homogeneous s.o.s. typed point pattern (object of class
  \code{"\link{sostpp}"}), having typemarks with elements
  \code{lambda} (estimated intensity) and \code{invscale}
  (square root of lambda).
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

  \code{\link{sostpp.object}} for details on the class.
}

