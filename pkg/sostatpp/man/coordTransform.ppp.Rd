\name{coordTransform.ppp}
\alias{coordTransform.ppp}
\title{Apply Coordinate Transformation to Point Pattern}
\usage{
  \method{coordTransform}{ppp} (X, trafoxy = identxy, ...)
}
\arguments{
  \item{X}{a point pattern (object of class \code{"ppp"}).}

  \item{trafoxy}{the coordinate transformation function,
  defaults to the identical map \code{\link{identxy}}, see
  also `Details'.}

  \item{...}{Optional arguments passed \code{trafoxy}, and
  to \code{\link{coordTransform.owin}}.}
}
\description{
  Apply any coordinate transformation to a point pattern.
  Compare the spatstat function \code{\link{affine.ppp}}.
}
\details{
  The functions \code{trafoxy} (and \code{invtrafoxy}) take
  one or two arguments. In the latter case, both arguments
  are vectors of same length (not checked!), and the second
  argument has to be named \code{y}.  If only one argument
  is given, it is a list or a data frame with elements
  \code{x} and \code{y}.

  If the window of $X$ is a pixel mask, an additional
  inverse transformation has to be provided, see
  \code{\link{coordTransform.owin}}.
}
\examples{
# transforming a Poisson point pattern by inhomogeneous scaling
# around origo

galaxytrafo <- function(xx, yy) {
  dd <- xx^2 + yy^2
  return(list(x = dd * xx, y = dd * yy))
  }

pp <- rpoispp(100, win = shift(square(2), c(-1,-1)))
ppstar <- coordTransform(pp, galaxytrafo)
plot(pp, pch = 16, cex = .5)
plot(ppstar, pch = 16, cex = .5)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{coordTransform.owin}} for the transformation
  of windows
}
\keyword{manip}
\keyword{spatial}

