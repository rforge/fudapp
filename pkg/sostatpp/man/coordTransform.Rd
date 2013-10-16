\name{coordTransform}
\alias{coordTransform}
\title{Apply Coordinate Transformation}
\usage{
  coordTransform(X, ...)
}
\arguments{
  \item{X}{Object to be transformed, currently of class
  \code{"\link{im}"}, \code{"\link{owin}"} or
  \code{"\link{ppp}"}.}

  \item{...}{arguments passed to class methods.}
}
\value{
  A list with elements \code{x} and \code{y}.
}
\description{
  Apply a coordinate transformation to a point pattern or a
  window
}
\details{
  The functions \code{trafoxy} (and \code{invtrafoxy}) take
  one or two arguments. In the latter case, both arguments
  are vectors of same length (not checked!), and the second
  argument has to be named \code{y}.  If only one argument
  is given, it is a list or a data frame with elements
  \code{x} and \code{y}.  In a future version, ... may
  transport arguments to the transformation function
}
\seealso{
  \code{\link{coordTransform.im}},
  \code{\link{coordTransform.owin}},
  \code{\link{coordTransform.ppp}}
}

