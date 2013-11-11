\name{estL}
\alias{estL}
\title{Template L-function of a hidden 2nd-order stationary process}
\usage{
  estL(...)
}
\arguments{
  \item{...}{Arguments for \code{\link{estK}}.}
}
\description{
  Estimates the template \eqn{L}-function of a point
  process by transforming the template \eqn{K}-function.
}
\details{
  For a reweighted or retransformed second-order stationary
  Poisson point process, the theoretical value of the
  template \eqn{L}-function is \deqn{L_0(r)=r}{L_0(r)=r}.

  Under locally rescaled second-order stationarity, this
  holds only approximately for large arguments, if the
  intensity varies strongly. Furthermore, approximations
  when calculating locally scaled distances and
  simplifications in the estimation of the locally scaled
  \eqn{K}-function may add a bias to the estimates of the
  locally scaled \eqn{L}-function for inhomogeneous Poisson
  point processes. The bias depends upon how fast the
  intensity function varies. Usually, the approximation
  holds very well for reasonably small arguments.
}
\seealso{
  \code{\link{estK}}
}

