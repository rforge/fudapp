\name{as.sostpp.ppp}
\alias{as.sostpp.ppp}
\title{Convert object of class ppp to class sostpp}
\usage{
  \method{as.sostpp}{ppp} (x, type = "h", ...)
}
\arguments{
  \item{x}{an object of class \code{"ppp"}}

  \item{type}{character giving the type of second order
  stationarity. One of "w", "t", "s", "h", "hs" (or
  "none").}

  \item{...}{arguments passed to \code{\link{reweighted}},
  \code{\link{retransformed}}, \code{\link{rescaled}}.
  Ignored if \code{type} = \code{"h"} or \code{type} =
  \code{"hs"}.}
}
\value{
  an object of class \code{"sostpp"}, but with no type
  information.
}
\description{
  Converts a spatstat-point pattern of class \code{"ppp"}
  into a second-order stationarity typed point pattern of
  class \code{"sostpp"}, and assigns type of second-order
  stationarity.
}
\details{
  Type \code{"none"} is only for internal use, and may
  result in errors when trying to estimate summary
  statistics or alike.
}
\examples{
# print an ordinary ppp point pattern
print(bronzefilter)
brofi <- as.sostpp (bronzefilter)
print(brofi)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{sostpp.object}} for details on the class.
}

