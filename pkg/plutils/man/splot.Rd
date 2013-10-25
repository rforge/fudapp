\name{splot}
\alias{splot}
\title{Plot with styles}
\usage{
  splot(x, ..., .NULL.rm = TRUE, .plotmethod = "plot")
}
\arguments{
  \item{x}{an object that belongs to a class with
  \code{plot} method.}

  \item{...}{plot parameters, may be wrapped in
  \code{\link{simplist}}s.}

  \item{.NULL.rm}{logical. If \code{TRUE}, ignore
  parameters with value \code{NULL}.}

  \item{.plotmethod}{character naming a function, defaults
  to \code{"plot"}.}
}
\description{
  Plot using predefined parameter lists
}
\details{
  The function calls the \code{plot}-method of \code{x},
  with arguments given in \code{...}. Any
  \code{\link{simplist}}s contained in the arguments are
  unwrapped. If arguments with the same name appear in the
  list, the last one is taken.

  ! Note: Don't use this function inside a plot method, or
  any other method that might be called with \code{splot} !
}
\examples{
boldly <- simplist(col = "red", lwd = 5)
timidly <- simplist(col = "gray", lwd = 0.5, lty = "dashed")

splot(sin, boldly, to = pi, ylim = c(-1,1))
splot(cos, timidly, add = TRUE, to = pi)

# the last one wins:
splot(sin, boldly, timidly)
splot(sin, timidly, boldly, col = "green")
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

