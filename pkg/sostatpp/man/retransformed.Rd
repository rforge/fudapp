\name{retransformed}
\alias{retransformed}
\title{Make point pattern retransformed 2nd-order stationary}
\usage{
  retransformed(X, trafo = identxy, lambda = NULL,
    invtrafo = NULL, ...)
}
\arguments{
  \item{X}{the original point pattern}

  \item{trafo}{the coordinate transformation, can be either
  \itemize{ \item a \code{function(x,y)} that returns a
  data frame or list with elements \code{x} and \code{y}
  and is valid at each point of \code{X} \item a string
  with value \code{"gradx"} or \code{"grady"}.  }}

  \item{lambda}{optional, intensity. Only used if
  \code{trafo="gradx")} or \code{trafo="grady")}. can be
  given as \itemize{ \item a single number, \item a vector
  of intensity values at the points of \code{X}, \item a
  \code{function(x,y)} that returns the intensity and is
  valid at each point of \code{X} \item a pixel image of
  class \code{"\link{im}"}.  }}

  \item{invtrafo}{optional; a \code{function(x,y)} that
  returns a data frame or list with elements \code{x} and
  \code{y} and is valid at each point of \code{X}. The
  inverse of \code{trafo}, is used by function
  \code{"\link{backtransformed}"} to transform the window.}

  \item{...}{optional extra parameters for \code{trafo}, if
  this is given as a \code{function}.}
}
\value{
  A retransformed s.o.s. typed point pattern (object of
  class \code{"\link{sostpp}"}), having typemarks with
  elements \code{x0} and \code{y0} (backtransformed
  points), and extra information about the backtransform.
}
\description{
  Add mark information for retransformed second-order
  stationary point processes.
}
\details{
  It is assumed that the transformation is one-to-one, in
  the sense that the observation window is mapped to
  itself.  Whether this is true is \emph{not} checked. If
  you need to analyse transformations that are not
  one-to-one, this can be accomplished manually by applying
  the function \code{\link{coordTransform}} to the pattern
  \code{X}, and analysing the resulting pattern as a
  homogeneous point pattern.

  If \code{trafo = "gradx"} or \code{trafo = "grady"}, the
  backtransformation is obtained from the data by inverse
  cdf transform, under the assumption that the
  transformation function affects only the \eqn{x}- or
  \eqn{y}-coordinate, respectively.  If additionally the
  intensity \code{lambda} is given, the gradient back
  transform is calculated from \code{lambda}.

  The function \code{invtrafo} is applied to the window
  when the pattern is backtransformed using
  \code{"\link{backtransformed}"}. If not given, linear
  interpolation is used, however currently only for
  gradient transformations (\code{trafo = "gradx"} or
  \code{trafo = "grady"}).
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  related functions: \code{\link{reweighted}},
  \code{\link{rescaled}}, \code{\link{ashomogeneous}}

  \code{\link{sostpp.object}} for details on the class.
}

