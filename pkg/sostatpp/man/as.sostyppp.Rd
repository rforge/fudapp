\name{as.sostyppp}
\alias{as.sostyppp}
\title{Convert an R-object  to class sostyppp}
\usage{
  as.sostyppp(x, type = "h", ...)
}
\arguments{
  \item{x}{an R-object, currently of class \code{"ppp"} of
  \code{"sostyppp"}}

  \item{type}{character giving the type of second order
  stationarity. One of "w", "t", "s", "h", "hs" (or
  "none").}

  \item{...}{further arguments}
}
\value{
  an object of class \code{"sostyppp"}, but with no type
  information.
}
\description{
  Converts an R-object into a second-order stationarity
  typed point pattern of class \code{"sostyppp"}.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{sostyppp.object}} for details on the class.
}

