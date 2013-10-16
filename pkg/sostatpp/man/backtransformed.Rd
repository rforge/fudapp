\name{backtransformed}
\alias{backtransformed}
\title{Obtain backtransformed point pattern}
\usage{
  backtransformed(X)
}
\arguments{
  \item{X}{a retransformed s.o.s. type tagged point
  pattern, object of class \code{{sostyppp}}.}
}
\value{
  a homogeneous s.o.s. type tagged point pattern of class
  \code{{sostyppp}} with points in \code{x0} and \code{y0}.
  The type of the result is set to both homogeneous and
  scaled-homogeneous, and is typemarked with constant
  intensity and constant inverse scale factor.

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
  an element \code{tinfo}, a list containing information
  about the transformation. If this list contains an
  element \code{backtransform}, this element is taken to be
  a function and used to backtransform the window. If the
  original transformation was a gradient transformation,
  the coordinates of the window are interpolated.
  Currently, no saftey precautions if \code{backtransform}
  returns rubbish.
}
\examples{
bronzetra <- retransformed(bronzefilter, "gradx")
bronzetemplate <- backtransformed(bronzetra)
plot(bronzetemplate, use.marks = FALSE)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

