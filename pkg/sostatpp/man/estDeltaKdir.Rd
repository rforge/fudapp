\name{estDeltaKdir}
\alias{estDeltaKdir}
\title{Contrast of orthogonal directional K-functions}
\usage{
  estDeltaKdir(X, type = c("s", "t", "w", "h", "hs"),
    dphi = pi/4, r = NULL, correction = "isotropic",
    normpower = 0, ..., rescaleangle = TRUE, max.ls.r = 3)
}
\arguments{
  \item{X}{a point pattern, object of class \code{"ppp"}.}

  \item{type}{character, the type of second-stationarity
  assumed: \itemize{ \item \code{"s"} locally rescaled
  \item \code{"hs"} homogeneous, but evaluated as scaled
  \eqn{K}-function } Only the first match is used, and only
  local scaling is supported so far.}

  \item{dphi}{half the angle of the \eqn{K}-functions
  directions}

  \item{r}{optional: vector of argument values \eqn{r} at
  which \eqn{K(r)} should be evaluated.}

  \item{correction}{a character vector giving the edge
  correction type, so far only \code{"isotropic"} is
  supported.}

  \item{normpower}{an integer between 0 and 2. If
  \code{normpower} > 0, the intensity is normalized, see
  the Details.}

  \item{...}{optional arguments passed to
  \code{\link{as.sostpp}}}

  \item{rescaleangle}{logical, indicating whether to
  rescale the directional \eqn{K}-functions as to represent
  the full circle}

  \item{max.ls.r}{upper limit for argument \eqn{r}. The
  default 3 is quite large - note that the argument of the
  locally rescaled \eqn{K}-function corresponds to
  \deqn{r/\sqrt{\lambda}}{r / sqrt(lambda)} in the non
  scaled case.}
}
\description{
  Estimates the difference of vertical and horizontal
  directional \eqn{K}-function of a point process.
}
\examples{
# The bronzefilter pattern is quite isotropic. Compare two halves:
data(bronzefilter)
X <- rescaled(bronzefilter)
W1 <- owin(c(0,9), c(0,7))
W2 <- owin(c(9,18), c(0,7))
rr <- seq(0, 1.3, .01)
plot(estDeltaKdir (X[W1], r=rr), ylim=c(-2,1), col= c("red", "black"), main="")
lines(rr, estDeltaKdir (X[W2],r = rr)$iso, col="blue")

# the backtransformed pattern shows anisotropy
Y <- backtransformed(retransformed(bronzefilter, trafo = "gradx"))
lines(rr, estDeltaKdir (Y[W1], r = rr)$iso,  col= c("red"), lty = "dotted")
lines(rr, estDeltaKdir (Y[W2], r = rr)$iso, col="blue", lty = "dotted" )
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{Kest}}, \code{\link{Kinhom}},
  \code{\link{Kscaled}}
}

