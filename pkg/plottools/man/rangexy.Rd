\name{rangexy}
\alias{rangexy}
\alias{rangexy.default}
\title{Report x- and y-range, generic function}
\usage{
  rangexy(...)

  \method{rangexy}{default} (x, y = NULL, finite = TRUE,
    ...)
}
\arguments{
  \item{x,y}{numeric vectors of x- and y- coordinates, or
  alternatively a single argument \code{x}.}

  \item{...}{arguments passed to class methods, ignored in
  default method \code{rangexy.default}}

  \item{finite}{logical, indicating if all non-finite
  elements should be omitted.}
}
\value{
  A list with elements \code{x} and \code{y}.
}
\description{
  \code{xyrange} returns a list with elements \code{x} and
  \code{y}, vectors containing the minimum and maximum of
  \eqn{x}- and \eqn{y}-values the argument(s). This
  function serves to determine a plot region.
}
\details{
  The default method passes the arguments \code{x} and
  \code{y} to function \code{\link{xy.coords}}. Therefore,
  reasonable results can also be expected when e.g.
  \code{y} is \code{NULL} and \code{x} is a list or data
  frame with components \code{x} and \code{y}.

  If finite is \code{TRUE}, the minimum and maximum of all
  finite values is computed, and \code{NA} and \code{NaN}
  values are ignored.
}
\examples{
df <- data.frame(x=1:4, y=(1:4)^2)
rangexy(df)
rangexy(1:4, 5:8)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\seealso{
  \code{\link{xy.coords}} for details on possible values of
  \code{x} when \code{y} is \code{NULL}
}

