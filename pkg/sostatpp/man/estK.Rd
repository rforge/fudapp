\name{estK}
\alias{estK}
\title{Estimate the (template) K-function}
\usage{
  estK(X, type, r = NULL,
    correction = c("border", "isotropic", "Ripley", "translate"),
    normpower = 0, ..., max.ls.r = 3)
}
\arguments{
  \item{X}{a point pattern, object of class \code{"ppp"}.}

  \item{type}{optional character, the type of second-order
  stationarity assumed: \itemize{ \item \code{"w"}
  reweighted \item \code{"t"} retransformed \item
  \code{"s"} locally rescaled \item \code{"h"} homogeneous,
  i.e. first order stationary \item \code{"hs"}
  homogeneous, but evaluated as scaled \eqn{K}-function }
  Only the first match is used.}

  \item{r}{optional: vector of argument values \eqn{r} at
  which \eqn{K(r)} should be evaluated.}

  \item{correction}{a character vector giving the edge
  correction type, may be any subset of \code{"border"},
  \code{"isotropic"}, \code{"translate"}, \code{"none"}.}

  \item{normpower}{an integer between 0 and 2. If
  \code{normpower} > 0, the intensity is normalized, see
  the Details.}

  \item{...}{optional arguments passed to
  \code{\link{as.sostpp}}}

  \item{max.ls.r}{optional, upper limit for argument
  \eqn{r} if \code{type="s"}.}
}
\description{
  Estimates the \eqn{K}-function or template
  \eqn{K}-function of a point process. Modified (and
  frozen) version of \code{\link{Kest}}.
}
\details{
  If \code{type} is not given, the last type of second
  order stationarity assigned to \code{X} is used to
  determine how the template \eqn{K}-function is estimated.
  If \code{X} has no type of second-order stationarity, it
  is assumed to be homogeneous.

  If \code{type} is given, but does not match the type of
  \code{X}, the function \code{\link{as.sostpp}} is called
  with arguments ldots to ensure the correct hidden
  second-order information.

  If \code{normpower} > 0, the intensity is renormalized,
  so that \code{\link{estK}} yields similar results as the
  \bold{spatstat}-function \code{\link{Kinhom}}. The
  intensity values are then multiplied by
  \deqn{c^{normpower/2}}{c^(normpower/2),} where \deqn{c =
  area(W)/sum_i(1/\lambda(x_i))}{c =
  area(W)/sum[i](1/lambda(x[i])).}

  \cr The hidden \eqn{K}-function for \strong{reweighted}
  s.o. stationary point processes delivers the same result
  as {spatstat}'s function \code{\link{Kinhom}}, up to a
  subtle difference for the border correction: \code{estK}
  does not use fast optimized code.

  If \code{X} is typed \strong{retransformed} s.o.
  stationary, the \eqn{K}-function of the
  \code{\link{backtransformed}} point pattern is returned,
  which corresponds to {spatstat}'s function
  \code{\link{Kest}}

  For \strong{locally rescaled} s.o. stationarity, the
  locally scaled interpoint distances are computed using an
  approximation proposed by Hahn (2007): The Euclidean
  distance between two points is multiplied by the average
  of the square roots of the intensity values at the two
  points. Similarly, all edge corrections are implemented
  as approximations. Here \code{estK} is similar to the
  {spatstat}-function \code{\link{Kscaled}} The
  translational edge correction suffers from a small
  intrinsic bias in some cases of locally rescaled s.o.s.,
  depending on intensity and window shape. It is
  recommended to use Ripley's isotropic edge correction, if
  possible.

  Note that the argument of the locally rescaled
  \eqn{K}-function corresponds to \deqn{r/\sqrt{\lambda}}{r
  / sqrt(lambda)} in the non scaled case.  The default
  maximum \code{max.ls.r} = 3 is thus quite large.
}
\examples{
# compare homogeneous version of estK and spatstat's Kest
# bronzefilter data are not marked as hidden second-order stationary
plot(Kest(bronzefilter))
plot(estK(bronzefilter))

# Evaluate as reweighted, with default intensity estimate,
# compare with spatstat's Kinhom
plot(Kinhom(bronzefilter))
plot(estK(reweighted(bronzefilter)))
# There is a subtle difference because spatstat uses intensity renormalisation
# by default. We can do that, too:
plot(estK(bronzefilter, type = "w", normpower = 1, add=T))

# Evaluate a rescaled version of the bronzefilter data:
plot(estK(rescaled(bronzefilter)))

# The last given type is the one that counts
plot(estK(retransformed(rescaled(bronzefilter), trafo="gradx")))
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\references{
  Prokesova, M., Hahn, U. and Vedel Jensen, E.B. (2006)
  Statistics for locally scaled point patterns.  In A.
  Baddeley, P. Gregori, J. Mateu, R. Stoica and D. Stoyan
  (eds.)  \emph{Case Studies in Spatial Point Pattern
  Modelling.} Lecture Notes in Statistics 185. New York:
  Springer Verlag. Pages 99--123

  Hahn, U. (2007) \emph{Global and Local Scaling in the
  Statistics of Spatial Point Processes}.
  Habilitationsschrift, Universitaet Augsburg.

  Hahn, U. and Jensen, E. B. V. (2013) Inhomogeneous
  spatial point processes with hidden second-order
  stationarity.  \emph{CSGB preprint} 2013-7.
  \url{http://data.imf.au.dk/publications/csgb/2013/math-csgb-2013-07.pdf}
}
\seealso{
  the \pkg{spatstat} functions \code{\link{Kest}},
  \code{\link{Kinhom}}, \code{\link{Kscaled}}
}

