\name{as.sostpp}
\alias{as.sostpp}
\title{Convert an R-object  to class sostpp}
\usage{
  as.sostpp(x, type = "h", ...)
}
\arguments{
  \item{x}{an R-object, currently of class \code{"ppp"} of
  \code{"sostpp"}}

  \item{type}{character giving the type of second order
  stationarity. One of "w", "t", "s", "h", "hs" (or
  "none").}

  \item{...}{further arguments}
}
\value{
  an object of class \code{"sostpp"}, but with no type
  information.
}
\description{
  Converts an R-object into a second-order stationarity
  typed point pattern of class \code{"sostpp"}.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{sostpp.object}} for details on the class.
}

