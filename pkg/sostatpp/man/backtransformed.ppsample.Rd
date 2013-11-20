\name{backtransformed.ppsample}
\alias{backtransformed.ppsample}
\title{Backtransformed a list of point pattern}
\usage{
  \method{backtransformed}{ppsample} (X)
}
\arguments{
  \item{X}{a sample of retransformed s.o.s. typed point
  patterns, object of class \code{{ppsample}}.}
}
\value{
  a \code{ppsample} object consisiting of homogeneous
  s.o.s. typed point patterns.
}
\description{
  Backtransform all point patterns in a sample, as well as
  the parent window.
}
\details{
  The parent window is also retransformed. For more
  details, see the function \code{\link{backtransformed}}
  for single point patterns.
}
\examples{
bronzetra <- retransformed(bronzefilter, "gradx")
bronzesample <- ppsubsample(bronzetra, quadrats(bronzetra, nx=6, ny = 3))
plot(bronzesample, use.marks = FALSE)
plot(backtransformed(bronzesample), use.marks = FALSE)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

