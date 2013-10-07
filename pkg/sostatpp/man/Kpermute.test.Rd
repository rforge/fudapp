\name{Kpermute.test}
\alias{Kpermute.test}
\title{Studentized Permutation Test for K-functions of Subsampled Point Patterns}
\usage{
  Kpermute.test(X, Y = NULL, type = NULL, quads1, quads2,
    tquads1, tquads2, rmin = 0, rmax, rlen = 100,
    Kfun = estK, correction = "iso", ..., use.tbar = FALSE,
    nperm = 25000)
}
\arguments{
  \item{X}{point pattern, object of \bold{spatstat}-class
  \code{\link{ppp}}}

  \item{Y}{optional; point pattern, object of
  \bold{spatstat}-class \code{\link{ppp}}}

  \item{type}{optional character, the type of second-order
  stationarity assumed: \itemize{ \item \code{"w"}
  reweighted \item \code{"t"} retransformed \item
  \code{"s"} locally rescaled \item \code{"h"} homogeneous,
  i.e. first order stationary \item \code{"hs"}
  homogeneous, but evaluated as scaled \eqn{K}-function }
  Only the first match is used.}

  \item{quads1,quads2}{quadrats for subsampling \code{X}
  (and \code{Y}). A \code{list} of objects of
  \bold{spatstat}-class \code{\link{owin}} or an object of
  \bold{spatstat}-class \code{\link{tess}}. In the current
  version not used for retransformed used if \code{type !=
  "t"}.}

  \item{tquads1,tquads2}{used instead of \code{quads1} and
  \code{quads2} for the backtransformed pattern if
  \code{type != "t"}.}

  \item{rmin}{optional, lower integration bound, defaults
  to 0; see `Details',}

  \item{rmax}{upper integration bound, see `Details',}

  \item{rlen}{optional, number of steps for numerical
  integration, defaults to 256; see `Details',}

  \item{Kfun}{optional \code{function}, the
  \eqn{K}-function to be used, either \code{\link{estK}}
  (default) or \code{\link{estDeltaKdir}}}

  \item{correction}{a character vector giving the edge
  correction type, may be any subset of \code{"border"},
  \code{"isotropic"}, \code{"translate"}, \code{"none"}.}

  \item{...}{further arguments for \code{Kfun}}

  \item{use.tbar}{logical, defaults to \code{FALSE}.
  Whether to apply studentization after integration, see
  `Details'.}

  \item{nperm}{\code{NULL} or an integer giving the number
  of random permutations. If \code{NULL}, all permutations
  are used. Only feasible if group sizes \eqn{m_1},
  \eqn{m_2} do not exceed 10.}
}
\value{
  A list with class \code{"htest"} containing the following
  components: \item{statistic}{the value of the test
  statistic,} \item{p.value}{the p-value of the test,}
  \item{alternative}{a character string describing the
  alternative hypothesis,} \item{method}{a character string
  indicating what type of test was performed,}
  \item{data.name}{a character string giving the name(s) of
  the data.}
}
\description{
  Perform a studentized permutation test of equal
  \eqn{K}-function for one or two subsampled point
  patterns.
}
\details{
  if \code{Y} is given, the \eqn{K}-functions of the two
  point patterns \code{X} and {Y} are compared, otherwise a
  test of hidden second-order stationarity is carried out
  on \code{X}.

  The test is a permutation test, as proposed in Hahn(2012)
  and Hahn & Jensen (2013).  Which test statistic is used,
  is controlled by \code{use.tbar}: \itemize{ \item \eqn{T
  = mean [ (K_1(r)-K_2(r))^2 / (s_1^2(r)/m_1 +
  s_2^2(r)/m_2), ]} if \code{use.tbar==FALSE} or \item
  \eqn{Tbar = mean [ (K_1(r)-K_2(r))^2 ] / mean[
  s_1^2(r)/m_1 + s_2^2(r)/m_2, ]} if\code{use.tbar==TRUE},
  } where \eqn{K_1(r)} and \eqn{K_2(r)} are the group
  means, and \eqn{s_1^2(r), s_2^2(r)} are within group
  variances at a fixed argument \eqn{r}.  The mean is taken
  over the interval \code{[rmin, rmax]}.  Note that test
  statistic \eqn{T} differs slightly from the statistics
  given in the above papers, in that the integral is
  replaced by the mean here.

  If \code{nperm == NULL}, the exact test with all
  permutations is used (combinations, for symmetry
  reasons). This may cause memory or computing time issues.
  If \code{nperm} is given as an integer, the permutations
  are \code{sample}d randomly, unless \code{nperm} is
  larger than the number of disjoint combinations. In that
  case, the exact version is used.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\references{
  Hahn, U. (2012) A Studentized Permutation Test for the
  Comparison of Spatial Point Patterns. \emph{Journal of
  the American Statistical Association}, \bold{107} (498),
  754--764.

  Hahn, U. and Jensen, E. B. V. (2013) Inhomogeneous
  spatial point processes with hidden second-order
  stationarity. \emph{CSGB preprint} 2013-07,
  \url{http://data.imf.au.dk/publications/csgb/2013/math-csgb-2013-07.pdf}
}
\keyword{htest}
\keyword{nonparametric}
\keyword{robust}
\keyword{spatial}
\keyword{ts}

