\name{rescaled}
\alias{rescaled}
\title{Make point pattern locally rescaled 2nd-order stationary}
\usage{
  rescaled(X, invscale = NULL, lambda = NULL, ...)
}
\arguments{
  \item{X}{the original point pattern}

  \item{invscale}{optional. The \emph{inverse} of estimated
  scale function, can be either \itemize{ \item a single
  number, \item a numeric vector of (inverse!) scale factor
  values at the points of \code{X}, \item a
  \code{function(x,y)} that returns the inverse scale
  factor and is valid at each point of \code{X} \item a
  pixel image of class \code{"\link{im}"} }}

  \item{lambda}{optional extra parameters, see details. The
  possible format of this corresponds to that of parameter
  \code{iscale}.}

  \item{\ldots}{arguments passed to \code{invscale} or
  \code{lambda}, if these are functions, or to the
  \bold{spatstat}-function \code{\link{density.ppp}} if
  both \code{invscale} and \code{lambda} are missing.}
}
\value{
  A rescaled s.o.s. typed point pattern (object of class
  \code{"\link{sostpp}"}), having typemarks with an element
  \code{invscale} (square root of estimated intensity)
}
\description{
  Add type information for locally rescaled second-order
  stationary point processes.
}
\details{
  If \code{invscale} is empty, the square root of the
  intensity \code{lambda} is used instead.  If neither
  \code{invscale} nor \code{lambda} are given, the function
  checks if the pattern \code{X} has previously been marked
  with the intensity (by function
  \code{\link{reweighted}}).  If both \code{invscale} and
  \code{lambda} are empty and there are no intensity marks,
  the intensity is estimated using the
  \bold{spatstat}-function \code{\link{density.ppp}}, and
  extra arguments \ldots are passed to \code{density.ppp}.

  If \code{invscale} (or \code{lambda}) is given as a
  function, extra parameters may be passed as \ldots.

  If \code{invscale} is given as a single number, the point
  pattern gets marked with constant scale factor, which
  effectively means that it will be analysed as a
  homogeneous point process.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  related functions: \code{\link{reweighted}},
  \code{\link{retransformed}}, \code{\link{ashomogeneous}}

  \code{\link{sostpp.object}} for details on the class.
}

