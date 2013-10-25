\name{backtransformed.sostyppp}
\alias{backtransformed.sostyppp}
\title{Obtain backtransformed point pattern}
\usage{
  \method{backtransformed}{sostyppp} (X)
}
\arguments{
  \item{X}{a retransformed s.o.s. type tagged point
  pattern, object of class \code{{sostyppp}}.}
}
\value{
  A homogeneous s.o.s. type tagged point pattern of class
  \code{sostyppp}.  The type of the result is set to both
  homogeneous and scaled-homogeneous, and is typemarked
  with constant intensity and constant inverse scale
  factor.

  The window of the resulting pattern is polygonal if the
  original was a rectangle or polygonal; it is a binary
  mask if the original window was a binary mask.
}
\description{
  Backtransform a pattern that is tagged as retransformed
  second-order stationary.
}
\details{
  As retransformed s.o.s. typed point pattern, \code{X} has
  an attribute \code{sostinfo}, a list containing (among
  others) information about the transformation. If this
  list contains an element \code{backtransform}, this
  element is taken to be a function and used to
  backtransform the window. If the original transformation
  was a gradient transformation, the coordinates of the
  window are interpolated. Currently, no saftey precautions
  are taken if \code{backtransformed} returns rubbish.

  For patterns with windows that are binary masks (objects
  of class \code{spatstat::\link{im}}), also information on
  the inverse of \code{backtransformed} is required. This
  information is stored as element \code{invtransform} in
  attribute \code{sostinfo}.
}
\examples{
bronzetra <- retransformed(bronzefilter, "gradx")
bronzetemplate <- backtransformed(bronzetra)
plot(bronzetemplate, use.marks = FALSE)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  The details of \code{\link{retransformed}} on the
  necessity to give both the transformation and its inverse
  when the window is of class \code{spatstat::\link{im}},
  and \code{\link{backtransformed.ppsample}} for
  backtransformation of samples of point patterns.
}

