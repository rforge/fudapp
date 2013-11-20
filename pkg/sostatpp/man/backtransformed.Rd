\name{backtransformed}
\alias{backtransformed}
\title{Obtain backtransformed point pattern or sample of point patterns}
\usage{
  backtransformed(X)
}
\arguments{
  \item{X}{a retransformed s.o.s. type tagged point
  pattern, object of class \code{{sostyppp}}, or a
  \code{ppsample} of such point patterns.}
}
\value{
  A homogeneous s.o.s. type tagged point pattern of class
  \code{sostyppp}, or a \code{ppsample} of such point
  patterns.  The type of the result is set to both
  homogeneous and scaled-homogeneous, and is typemarked
  with constant intensity and constant inverse scale
  factor.

  The window of the resulting pattern is polygonal if the
  original was a rectangle or polygonal; it is a binary
  mask if the original window was a binary mask.
}
\description{
  Backtransform a pattern that is tagged as retransformed
  second-order stationary, or a sample of such patterns.
}
\details{
  If \code{X} is a \code{ppsample}, the function
  \code{\link{backtransformed.sostyppp}} is applied to each
  of its elements.
}
\examples{
bronzetra <- retransformed(bronzefilter, "gradx")
bronzetemplate <- backtransformed(bronzetra)
plot(bronzetemplate, use.marks = FALSE)

bronzesample <- ppsubsample(bronzetra, quadrats(bronzetra, nx=6, ny = 3))
plot(bronzesample, use.marks = FALSE)
plot(backtransformed(bronzesample), use.marks = FALSE)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{backtransformed.sostyppp}},
  \code{\link{backtransformed.ppsample}}
}

