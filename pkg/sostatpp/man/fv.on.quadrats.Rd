\name{fv.on.quadrats}
\alias{fv.on.quadrats}
\title{Estimate summary function on quadrats}
\usage{
  fv.on.quadrats(pp, quads, fun = K.est, ...)
}
\arguments{
  \item{pp}{point pattern, object of class
  \code{\link{sostyppp}} or {spatstat}-class
  \code{\link[spatstat]{ppp}}}

  \item{quads}{quadrats for subsampling \code{pp}. A
  \code{list} of objects of spatstat-class
  \code{\link[spatstat]{owin}} or an object of
  spatstat-class \code{\link[spatstat]{tess}}.}

  \item{fun}{the summary function to be applied}

  \item{...}{further arguments passed to \code{"fun"}}
}
\value{
  An object of class \code{fvlist}, which is a list of
  spatstat-\code{\link[spatstat]{fv}} objects.
}
\description{
  Estimate a summary function on subsamples of a point
  pattern.
}
\examples{
pp <- rpoispp(100, win=square(4))
Ks <- fv.on.quadrats (pp, quadrats(pp, nx = 2, ny = 2))
lapply(Ks, plot)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\keyword{nonparametric}
\keyword{robust}
\keyword{spatial}
\keyword{ts}

