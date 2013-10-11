\name{estOnQuadrats}
\alias{estOnQuadrats}
\title{Estimate summary function on quadrats}
\usage{
  estOnQuadrats(X, type = NULL, quads, fun = estK,
    rmin = 0, rmax = 1.25, rlen = 100, ...)
}
\arguments{
  \item{X}{point pattern, object of \bold{spatstat}-class
  \code{\link{ppp}}}

  \item{type}{optional character, the type of second-order
  stationarity assumed: \itemize{ \item \code{"w"}
  reweighted \item \code{"t"} retransformed \item
  \code{"s"} locally rescaled \item \code{"h"} homogeneous,
  i.e. first order stationary \item \code{"hs"}
  homogeneous, but evaluated as scaled \eqn{K}-function }
  Only the first match is used.}

  \item{quads}{quadrats for subsampling \code{X}. A
  \code{list} of objects of \bold{spatstat}-class
  \code{\link{owin}} or an object of \bold{spatstat}-class
  \code{\link{tess}}.}

  \item{fun}{the summary function to be applied}

  \item{rmin}{optional, lower bound, defaults to 0,}

  \item{rmax}{upper bound for the radius,}

  \item{rlen}{optional, number of steps in argument vector,
  defaults to 256,}

  \item{...}{further arguments passed to \code{"fun"} or
  for type-tagging of the point pattern \code{X}}
}
\value{
  An object of class \code{foolist}, which is a list with
  items \itemize{ \item \code{npts} number of points on the
  quadrats \item \code{r} arguments of the \eqn{K}-function
  \item \code{fooarray} array of estimates, of dimension
  \code{rlen} x number of quadrats \item \code{footheo}
  theoretical values under CSR (Poisson process) \item
  \code{type} the type character \item \code{correction}
  character, the correction used \item \code{xlab, ylab}
  labels for plotting }
}
\description{
  Estimate a summary function on subsamples of a point
  pattern.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{estK}}, \code{\link{estDeltaKdir}} for
  estimation of the template \eqn{K}-function or of Delta
  K_dir.
}
\keyword{nonparametric}
\keyword{robust}
\keyword{spatial}
\keyword{ts}

