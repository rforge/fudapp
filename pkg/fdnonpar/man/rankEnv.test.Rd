\name{rankEnv.test}
\alias{rankEnv.test}
\title{Envelope test of goodness of fit}
\usage{
  rankEnv.test(obs, sim,
    alternative = c("two.sided", "less", "greater"),
    conf.level = c(1, 0.95, 0.9, 0.8))
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

  \item{conf.level}{a numerical vector of confidence levels
  (inclusion probabilities) of the envelopes to be plotted,
  for use in \code{\link{plot.envtest}}}
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
  \code{\link{fdsample}} object \code{obs} containing only
  one curve, is compared to simulated curves collected in
  the \code{fdsample} object '\code{sim}. The two sets of
  curves have to share the same argument values.

  \code{alternative == "less"} means the alternative that
  the observed curve has (some) smaller function values
  than the simulated curves.

  The test is performed as described in Davison and Hinkley
  (1997), Equation (4.17), and corresponds to the rank
  envelope test by Myllymaki et. al (2013), who suggest
  refinements of the test procedure.

  The result of the test can be plotted, see
  \code{\link{plot.envtest}}.
}
\examples{
# make a sample of sinus curves
tt <- seq(0, 2*pi, length = 20)
sinsim <- replicate(1000, sin(tt) + cumsum(rnorm(20, 0, 0.01)))
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
  Davison, A.C. and Hinkley, D.V. (1997) \emph{Bootstrap
  Methods and their Applications}, Cambridge University
  Press, Cambridge.

  M. Myllymaki, T. Mrkvicka, H. Seijo and P. Grabarnik
  (2013) \emph{Global envelope tests for spatial point
  patterns}, \url{http://arxiv.org/abs/1307.0239}.
}

