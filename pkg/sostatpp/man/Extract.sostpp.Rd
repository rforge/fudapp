\name{[.sostpp}
\alias{[.sostpp}
\alias{[<-.sostpp}
\title{Extract or replace subset of a second-order stationarity typed point pattern}
\usage{
  \method{[}{sostpp} (x, i)

  \method{[}{sostpp} (x, i) <- value
}
\arguments{
  \item{x}{a sos-typed point pattern, object of class
  \code{"sostpp"}.}

  \item{i}{subset index, see spatstat
  \code{\link{[<-.ppp}}.}

  \item{value}{Replacement for the subset, a sos-typed
  point pattern of same type.}
}
\description{
  An analogon to extraction an replacement of points in an
  ordinary point pattern, i.e. a spatstat-object of class
  \code{ppp}.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{sostpp.object}} for details on the class.
}

