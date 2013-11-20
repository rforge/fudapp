\name{sostyppp}
\alias{sostyppp}
\title{Class for Second-Order Stationarity-Typed Planar Point Patterns}
\description{
  A class \code{"sostyppp"} to represent a two-dimensional
  point pattern, with extra information about hidden
  second-order stationarity. Built on top of the
  spatstat-class \code{"\link{ppp}"}.
}
\details{
  This class represents a two-dimensional point pattern
  dataset with extra information relevant for analysis as a
  realization of a second-order stationary point process.

  From its ancestor, spatstat-class
  \code{"\link[spatstat]{ppp}"}, an object of type
  \code{sostyppp} inherits the elements \tabular{ll}{
  \code{x} \tab vector of \eqn{x} coordinates of data
  points \cr\code{y} \tab vector of \eqn{y} coordinates of
  data points \cr\code{n} \tab number of points
  \cr\code{window} \tab window of observation (an object of
  class \code{\link{owin}}) \cr\code{marks} \tab vector or
  data frame of marks } Additionally, it has attributes
  \tabular{ll}{ \code{sostype} \tab integer, encrypts the
  type of stationarity that is assumed in analysis, see
  below \cr\code{sostinfo} \tab a list containing
  information relevant to for calculating second-order
  statistics, \cr\tab such as the intensity function at the
  points of the pattern, \cr\code{extra} \tab a container
  (list) of additional information, intended for internal
  use.  \cr\tab This container is copied in subsetting
  operations.\cr }

  The type of second-order stationarity of an object
  \code{X} of class \code{sostyppp} is returned as
  \code{character} by the function
  \code{\link{currentType}}. Whether \code{X} has a given
  type of second-order stationarity, can be checked with
  \code{\link{hasType}}.

  Possible types of second-order stationarity (s.o.s.) are
  \tabular{ll}{ \code{"w"} \tab intensity reweighted s.o.s.
  \cr\tab \code{tinfo} contains a data frame \code{tmarks},
  with a variable \code{intens} giving the \cr\tab
  intensity evaluated in each data point.  \cr\code{"t"}
  \tab obtained by coordinate transformation \cr\tab
  attribute \code{sostinfo} contains a function
  \code{backtrafo(x,y)} that yields the backtransformed
  \cr\tab pattern, and a character variable
  \code{gradient}, taking values \code{"gradx"} or
  \code{"grady"} \cr\tab if the transformation depends only
  on one coordinate.  \cr\code{"s"} \tab locally rescaled
  s.o.s.  \cr\tab \code{sostinfo} contains a data frame
  \code{tmarks}, with a variable \code{invscale}, \cr\tab
  the inverse scale factor in each data point\cr
  \cr\code{"h"} \tab homogeneous, to be evaluated with
  standard methods \cr\code{"hs"} \tab homogeneous, to be
  evaluated with scale invariant statistics.  } An object
  of class \code{sostyppp} can carry type information for
  several types simultaneously.  Thus, function
  \code{\link{hasType}} may return \code{TRUE} for
  different arguments.
}
\author{
  Ute Hahn \email{ute@imf.au.dk}
}
\keyword{attribute}
\keyword{spatial}

