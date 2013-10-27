\name{tL2.permtest}
\alias{tL2.permtest}
\title{Integrated Welch-t Squared Permutation Test for Two Samples of x-y-Data}
\source{
  Hahn(2012), with slight modification (using the mean
  instead of the integral, in order to avoid having to pass
  the arguments of the functions)
}
\usage{
  tL2.permtest(sample1, sample2, nperm = 25000,
    use.tbar = FALSE)
}
\arguments{
  \item{sample1,sample2}{lists of function values, object
  of type \code{\link{fdsample}}, need to have identical
  x-values.}

  \item{use.tbar}{logical, defaults to \code{FALSE}. If
  \code{TRUE}, integrated squared mean differences are
  divided by integrated variance, see `Details'.}

  \item{nperm}{\code{NULL} or an integer giving the number
  of random permutations. If \code{NULL}, all permutations
  are used. Only feasible if group sizes \eqn{m_1},
  \eqn{m_2} do not exceed 10. Default value is 25000, thus
  all permutations will be used on groups with \code{m_1 =
  m_2 =9}.}
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
  Perform a permutation test of equal distribution (mean)
  for two samples of functional or multivariate data.
}
\details{
  Test statistics are integral means of studentized square
  distances between the group means. The test statistics
  are closely related, but not equal to Hotelling's
  two-sample T-squared statistic. It is assumed that the
  functions all have the same, equidistant arguments.
  Depending on the value of \code{use.tbar}, the test
  statistic is either \itemize{ \item \eqn{T = mean [
  (mu_1(x)-mu_2(x))^2 / (s_1^2(x)/m_1 + s_2^2(x)/m_2) ]} or
  \item \eqn{Tbar = mean [ (mu_1(x)-mu_2(x))^2 ] / mean[
  s_1^2(x)/m_1 + s_2^2(x)/m_2 ]} } where \eqn{m_1}
  \eqn{m_2} denote the group sizes for \code{sample1} and
  \code{sample2}, and \eqn{mu_1(x), mu_2(x)} and
  \eqn{s_1^2(x), s_2^2(x)} are within group means and
  variances at a fixed argument \eqn{x}.  To calculate T,
  the mean is taken over all \eqn{n} arguments \eqn{x}.

  If \code{nperm} is given as an integer, the permutations
  are sampled randomly, unless \code{nperm} is larger than
  the number of disjoint combinations. In that case, and
  also if \code{nperm == NULL}, the exact test with all
  permutations is used (combinations, for symmetry
  reasons). If this causes memory or computing time issues,
  set \code{nperm} to a fixed value.
}
\examples{
# test the difference of atlantic and continental Canadian temperature curves
tL2.permtest(TempAtla, TempCont, nperm = 999)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\references{
  Hahn, U. (2012) A Studentized Permutation Test for the
  Comparison of Spatial Point Patterns. \emph{Journal of
  the American Statistical Association}, \bold{107} (498),
  754--764.
}
\keyword{htest}
\keyword{nonparametric}
\keyword{robust}
\keyword{ts}

