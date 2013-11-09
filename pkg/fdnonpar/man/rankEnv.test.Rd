\name{rankEnv.test}
\alias{rankEnv.test}
\title{Envelope test of goodness of fit}
\usage{
  rankEnv.test(obs, sim,
    alternative = c("two.sided", "less", "greater"),
    inclprob = c(1, 0.95, 0.9, 0.8), minn = 1)
}
\arguments{
  \item{obs}{object of class \code{fdsample}, the observed
  curve.}

  \item{sim}{object of class \code{fdsample}, the group of
  curves to which \code{obs} is compared.}

  \item{alternative}{a character string specifying the
  alternative hypothesis, one of \code{"two.sided"}
  (default), \code{"less"} or \code{"greater"}. May be
  abbreviated.}

  \item{inclprob}{a numerical vector of inclusion
  probabilities of the envelopes to be plotted, for use in
  \code{\link{plot.envtest}}}

  \item{minn}{number of minimum ranks per curve to average
  over when ranking, see details}
}
\description{
  Test if an observed curve matches a sample of simulated
  curves (or a group of other observations). A global
  envelope test is performed, with p-value corresponding to
  the most extreme pointwise percentile the observed curve
  reaches among all curves.
}
\details{
  The observed curve, represented by the
  \code{\link{fdsample}} object \code{obs} is compared to
  simulated curves collected in the \code{fdsample} object
  '\code{sim}. The two sets of curves have to share the
  same argument values, and \code{obs} is supposed to
  contain only one curve.

  \code{alternative == "less"} is the one-sided alternative
  meaning that the observed curve has (some) smaller
  function values than the simulated curves, and
  \code{alternative == "greater"} is the opposite one-sided
  alternative.

  For \code{minn == 1}, the test corresponds to the rank
  envelope test by Myllymaki et. al (2013), and to the
  procedure described in Davison and Hinkley (1997),
  Equation (4.17). The p-value is obtained by ranking the
  curves according to the minimum pointwise rank obtained
  in any point of the curve -- note that the curves are
  actually represented as vectors.

  If \code{minn > 1}, the mean of the \code{minn} smallest
  pointwise ranks per curve is used instead, to rank the
  curves among each other. This may increase the power of
  the test, but the test is no longer usable as a graphical
  test.

  The result of the test can be plotted, see
  \code{\link{plot.envtest}}. If \code{minn} was set to a
  value \code{> 1}, a warning is issued when plotting.
}
\examples{
# make a sample of sinus curves
tt <- seq(0, 2*pi, length = 20)
sinsim <- replicate(5000, sin(tt) + cumsum(rnorm(20, 0, 0.01)))
sinobs <- sin(tt - pi/50) + cumsum(rnorm(20, 0, 0.01))
sim <- fdsample(tt, sinsim)
obs <- fdsample(tt, sinobs)

testresult <- rankEnv.test(obs, sim)
print(testresult)
plot(testresult)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\references{
  M. Myllymaki, T. Mrkvicka, H. Seijo and P. Grabarnik
  (2013) \emph{Global envelope tests for spatial point
  patterns}, \url{http://arxiv.org/abs/1307.0239}.

  Davison, A.C. and Hinkley, D.V. (1997) \emph{Bootstrap
  Methods and their Applications}, Cambridge University
  Press, Cambridge.
}

