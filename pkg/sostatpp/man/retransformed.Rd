\name{retransformed}
\alias{retransformed}
\title{Make point pattern retransformed 2nd-order stationary}
\usage{
  retransformed(X, backtrafo = identxy, intensity = NULL,
    trafo = NULL, ...)
}
\arguments{
  \item{X}{the original point pattern}

  \item{backtrafo}{the coordinate transformation, can be
  either \itemize{ \item a \code{function(x,y)} that
  returns a data frame or list with elements \code{x} and
  \code{y} and is valid at each point of \code{X} \item a
  string with value \code{"gradx"} or \code{"grady"}.  }}

  \item{intensity}{optional, intensity. Only used if
  \code{backtrafo="gradx")} or \code{backtrafo="grady")}.
  can be given as \itemize{ \item a single number, \item a
  vector of intensity values at the points of \code{X},
  \item a \code{function(x,y)} that returns the intensity
  and is valid at each point of \code{X} \item a pixel
  image of class \code{"\link{im}"}.  }}

  \item{trafo}{optional; a \code{function(x,y)} that
  returns a data frame or list with elements \code{x} and
  \code{y} and is valid at each point of \code{X}. The
  inverse of \code{backtrafo}, is used by function
  \code{"\link{backtransformed}"} to transform the window
  if it is a binary mask.}

  \item{...}{optional extra parameters for
  \code{backtrafo}, if this is given as a \code{function}.}
}
\value{
  A retransformed s.o.s. typed point pattern (object of
  class \code{"\link{sostyppp}"}) with information about
  the backtransform.
}
\description{
  Add mark information for retransformed second-order
  stationary point processes.
}
\details{
  If \code{backtrafo = "gradx"} or \code{backtrafo =
  "grady"}, the backtransformation is obtained from the
  data by inverse cdf transform, affecting only the
  \eqn{x}- or \eqn{y}-coordinate, respectively. For these
  gradient transformations, it is assumed that the
  transformation is one-to-one, in the sense that the
  observation window is mapped to itself.  If additionally
  the intensity \code{intensity} is given, the gradient
  back transform is calculated from \code{intensity} as
  described in Hahn & Jensen (2013).

  The \code{tinfo} element in the resulting
  \code{sostyppp}-object contains two functions
  \code{transform} and \code{backtransform}. They are used
  when the pattern is backtransformed to homogeneity by
  function with \code{"\link{backtransformed}"}.  In the
  case of gradient transformations, these functions are
  obtained by linear transformation with
  (\code{\link{approxfun}}). The reverse of
  \code{backtransform} is needed when the window is a
  binary mask, see \code{spatstat}'s \code{\link{owin}},
  and has to be given as argument {\code{trafo}}.
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
  related functions: \code{\link{reweighted}},
  \code{\link{rescaled}}, \code{\link{ashomogeneous}}

  \code{\link{sostyppp.object}} for details on the class.
}

