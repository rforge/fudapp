\name{intensity.ppsample}
\alias{intensity.ppsample}
\title{Estimated intensities of a point pattern sample}
\usage{
  \method{intensity}{ppsample} (X, ...)
}
\arguments{
  \item{X}{a sample of point patterns, object of class
  \code{ppsample}}

  \item{...}{ignored, only for compatibility with generic
  method in \code{spatstat}}
}
\value{
  A numeric vector of estimated intensities.
}
\description{
  The estimated intensities for all point patterns
  contained in the data set.
}
\details{
  The intensities are estimated as the number of points
  divided by the area.
}
\seealso{
  \code{\link{ppsubsample}} for creating \code{ppsample}
  objects, \code{\link{npoints.ppsample}} for obtaining the
  number of points, \code{\link{intensity}} for spatstats
  generic function.
}

