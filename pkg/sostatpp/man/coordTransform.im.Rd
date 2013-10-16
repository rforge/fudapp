\name{coordTransform.im}
\alias{coordTransform.im}
\title{Apply Coordinate Transformation to a Pixel Image}
\usage{
  \method{coordTransform}{im} (X, trafoxy = identxy,
    invtrafoxy = identxy, ...)
}
\arguments{
  \item{X}{Pixel image (object of class \code{"im"}).}

  \item{trafoxy}{the coordinate transformation function,
  defaults to the identical map \code{\link{identxy}}, see
  `Details'.}

  \item{invtrafoxy}{the inverse to \code{trafoxy}, defaults
  to the identical map \code{\link{identxy}}.}

  \item{...}{Optional arguments passed to \code{trafoxy}
  and \code{ivtrafoxy}, and to \code{\link{as.mask}}, then
  controlling the pixel resolution of the transformed
  image.}
}
\description{
  Apply any coordinate transformation to a pixel image.
  Generalizes the spatstat function
  \code{\link{affine.im}}.
}
\details{
  The mappings are given by \code{trafoxy} (and
  \code{invtrafoxy}), a \code{function(x)} or
  \code{function(x, y)}. The functions have to return a
  list or data frame with elements elements \code{x} and
  \code{y}. In the case with only one argument, \code{x} is
  a list or a data frame with elements \code{x} and
  \code{y}.
}
\examples{
# transformation of the polygonal window letterR from the spatstat package
# as image
trafo <- function(x, y) list(x = x^1.5 + 0.5*y, y = y*.5)
invtrafo <- function(x, y) list(x = (x - y) ^(1/1.5), y = y*2)
imR <- as.im(letterR)
plot(imR)
plot(coordTransform(imR, trafo, invtrafo))
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\keyword{manip}
\keyword{spatial}

