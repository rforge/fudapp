\name{sos.test}
\alias{sos.test}
\title{Test of second-order stationarity}
\usage{
  sos.test(x, qsets = NULL, Kfun = K.est, rmax, rlen = 256,
    ..., use.tbar = FALSE, nperm = 1000)
}
\arguments{
  \item{x}{the point pattern to be tested, an object of
  class \code{sostyppp}}

  \item{qsets}{quadrat sets on which the point pattern is
  to be compared, given as \code{list} of (two) lists of
  test quadrats or tessellations (objects of type
  \code{\link{tess}}). The list contains entries with names
  \code{hi} and \code{lo}, optionally also \code{unused},
  as produced by \code{\link{twoquadsets}}.}

  \item{rmax}{numeric, the upper integration limit, see
  Details,}

  \item{rlen}{optional, number of steps for numerical
  integration, defaults to 256,}

  \item{Kfun}{optional \code{function}, the
  \eqn{K}-function to be used, either \code{\link{K.est}}
  (default) or \code{\link{DeltaKdir.est}},}

  \item{...}{optional parameters for function \code{Kfun}.
  To speed up calculations, it is recommended to give an
  explicite \code{correction} argument.}

  \item{use.tbar}{logical, if true, a modified test
  statistic is used, see Details,}

  \item{nperm}{number of random permutations, see Details.}
}
\description{
  Perform a permutation test of (hidden) second-order
  stationarity as described in Hahn & Jensen (2013).
  Returns an object of class \code{Kpermutest} that also
  can be plotted, see the details.
}
\details{
  The function tests if the point pattern \code{x} is
  (hidden) second- order stationary. The pattern \code{x}
  is an object of type \code{sostyppp}, and its type tag
  determines which type of second-order stationarity will
  be tested. \subsection{What the test does, and details on
  the parameters}{ The test is based on estimates of the
  K-function on two subsamples of the pattern \code{x}. The
  two samples of estimated K-functions are compared by a
  permutation test. The test statistic is the integral over
  a squared Welch-t-statistic,
  \deqn{T=\int_0^{r_{max}}\frac{(K_1(r)-K_2(r))^2}{s_1^2(r)/m_1
  + s_2^2(r)/m_2} d r}{T = integral [ (K_1(r)-K_2(r))^2 /
  (s_1^2(r)/m_1 + s_2^2(r)/m_2)],} where \eqn{K_1(r)} and
  \eqn{K_2(r)} are the group means, and \eqn{s_1^2(r),
  s_2^2(r)} are within group variances at a fixed argument
  \eqn{r}. The integral spans an interval \eqn{[0,
  r_{max}]}. It is approximated by the mean of the
  integrand over all \code{rlen} values of \eqn{r},
  multiplied by the length of the integral, i.e., by
  \code{rmax}.

  A variant of the test statistic, \eqn{\bar T}{Tbar}, uses
  the variance stabilized function \eqn{K(r)/r} instead of
  \eqn{K(r)} and replaces the denominator in the integrand
  with \eqn{mean (s_1^2(r)/m_1 + s_2^2(r)/m_2)}. To use
  this variant instead of the original statistc \eqn{T},
  let \code{use.tbar = TRUE}

  The \emph{p}-value is obtained by permutation across the
  groups; the number of permutations is specified by
  \code{nperm}. If \code{nperm = NULL}, the exact test with
  all permutations is used (combinations, for symmetry
  reasons). This may cause memory or computing time issues.
  If \code{nperm} is given as an integer, the permutations
  are sampled randomly, unless \code{nperm} is larger than
  the number of disjoint combinations. In that case, the
  exact version is applied, see \code{\link{tL2.permtest}}.

  To test against differences in local anisotropy, in
  particular to test the hypotheses of locally rescaled and
  retransformed second-order stationarity against each
  other, H\&J (2013) propose to use the \eqn{\Delta
  K_{dir}}-function instead of the isotropic
  \eqn{K}-function. For this variant of the test, let
  \code{Kfun = DeltaKdir.est}.

  A list of quadrats as required for argument \code{qsets}
  can be obtained by function \code{\link{twoquadsets}}. }
  \subsection{Details on the return value}{ The test
  returns an object belonging to classes \code{sostest} and
  \code{htest}, a list containing the following components:
  \tabular{ll}{ \cr\code{statistic}\tab{the value of the
  test statistic,} \cr\code{p.value}\tab{the p-value of the
  test,} \cr\code{alternative}\tab{a character string
  describing the alternative hypothesis,}
  \cr\code{method}\tab{a character string indicating what
  type of test was performed,} \cr\code{data.name}\tab{a
  character string giving the name(s) of the data.}
  \cr\code{Ksamples}\tab{a list of
  \code{\link{fdsample}}-objects, with elements \code{hi},
  \code{lo} and \code{theo}} } }
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\references{
  Hahn, U. and Jensen, E. B. V. (2013) Inhomogeneous
  spatial point processes with hidden second-order
  stationarity.  \emph{CSGB preprint} 2013-7.
  \url{http://data.imf.au.dk/publications/csgb/2013/math-csgb-2013-07.pdf}
}
\seealso{
  function \code{\link{tL2.permtest}} from package
  {fdnonpar} is used as test engine,
  \code{\link{twoquadsets}} is used for setting up quadrat
  samples. The quadrat subsamples or the $K$-function
  estimates can be plotted, see \code{\link{plot.Ktest}}
}

