% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/MakeHidden.R
\name{as.sostyppp.sostyppp}
\alias{as.sostyppp.sostyppp}
\title{Convert object of class sostyppp to class sostyppp}
\usage{
\method{as.sostyppp}{sostyppp}(x, type = "h", ...)
}
\arguments{
\item{x}{an object of class \code{"sostyppp"}}

\item{type}{character giving the type of second order stationarity. One of
"w", "t", "s", "h", or "hs".}

\item{...}{arguments passed to \code{\link{reweighted}}, \code{\link{retransformed}},
\code{\link{rescaled}}. Ignored if \code{type} = \code{"h"} or \code{type} = \code{"hs"}.}
}
\value{
an object of class \code{"sostyppp"} with corresponding type information.
}
\description{
Wrapper function for \code{\link{reweighted}}, \code{\link{retransformed}},
\code{\link{rescaled}} and \code{\link{homogeneous}}, assigns type of
second-order stationarity.
}
\examples{
brofi <- as.sostyppp (bronzefilter)
bronze <- as.sostyppp (brofi, "t", "gradx")
}
\author{
Ute Hahn,  \email{ute@imf.au.dk}
}
\seealso{
\code{\link{sostyppp}} for details on the class.
}

