\name{ppsubsample}
\alias{ppsubsample}
\title{Subsample a point pattern}
\usage{
  ppsubsample(pp, quads = NULL, ...)
}
\arguments{
  \item{pp}{object of class \code{\link{sostyppp}} or
  spatstat-class \code{\link{ppp}}, the point pattern to be
  subsampled}

  \item{quads}{optional a list of objects of spatstat-class
  \code{\link{owin}} or a spatstat - \code{\link{tess}}
  object}

  \item{...}{arguments passed to spatstat-function
  \code{\link{quadrats}} or an object of spatstat-class
  \code{\link{tess}}, the quadrats for subsampling
  \code{pp}.}
}
\value{
  a \code{ppsample} object: a list of objects of same class
  as the input \code{pp}.
}
\description{
  Subsample a point pattern on quadrats, generating a list
  of point patterns (\code{\link{sostyppp}} objects)
}
\details{
  If \code{quads} is not given, the quadrats are determined
  by spatstat-function \code{\link{quadrats}}.

  The \code{ppsample} can be plotted, and number of points
  or estimated intensity can be retrieved by methods
  \code{npoints} and \code{intensity}.
}

