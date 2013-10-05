\name{as.sostpp.sostpp}
\alias{as.sostpp.sostpp}
\title{Convert object of class sostpp to class sostpp}
\usage{
  \method{as.sostpp}{sostpp} (x, type = "h", ...)
}
\arguments{
  \item{x}{an object of class \code{"sostpp"}}

  \item{type}{character giving the type of second order
  stationarity. One of "w", "t", "s", "h", or "hs".}

  \item{...}{arguments passed to \code{\link{reweighted}},
  \code{\link{retransformed}}, \code{\link{rescaled}}.
  Ignored if \code{type} = \code{"h"} or \code{type} =
  \code{"hs"}.}
}
\value{
  an object of class \code{"sostpp"} with corresponding
  type information.
}
\description{
  Wrapper function for \code{\link{reweighted}},
  \code{\link{retransformed}}, \code{\link{rescaled}} and
  \code{\link{ashomogeneous}}, assigns type of second-order
  stationarity.
}
\examples{
brofi <- as.sostpp (bronzefilter)
bronze <- as.sostpp (brofi, "t", "gradx")
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{sostpp.object}} for details on the class.
}

