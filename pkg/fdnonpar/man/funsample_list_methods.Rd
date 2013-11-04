\name{funsample_list_methods}
\alias{$.funsample}
\alias{$<-.funsample}
\alias{c.funsample}
\alias{funsample_list_methods}
\title{List like methods for class funsample}
\usage{
  \method{c}{funsample} (..., recursive = FALSE)

  \method{$}{funsample} (x, name)

  \method{$}{funsample}(x, name) <- value
}
\arguments{
  \item{...}{for method \code{"c"}:\code{funsample} objects
  or functions to be concatenated, otherwise further
  options passed to next methods}

  \item{recursive}{ignored, for compatibility with generic
  function \code{\link{c}}}

  \item{x}{\code{funsample} object from which a function is
  to be extracted or replaced}

  \item{name}{character string or name (possibly backtick
  quoted) of a function contained \code{x}.}

  \item{value}{replacement value, needs to be a
  \code{function}, or \code{NULL}.}
}
\value{
  A \code{function}, or \code{NULL}.

  For \code{x$name <- value} a \code{funsample} object.
}
\description{
  Subsetting, concatenation and printing of
  \code{\link{funsample}}. object
}
\details{
  Method \code{"c"} concatenates the function lists
  (\code{funsample} objects) or functions contained in its
  arguments. The first argument is always a
  \code{funsample} object, otherwise this method would not
  have been called. Any functions contained in the further
  arguments are appended to the function list of the first
  argument. The attribute \code{"arglim"} of the result is
  obtained as intersection of the \code{arglim}s in the
  arguments. If this intersection is empty, the method
  returns \code{NULL} and issues a warning. The
  \code{options} attribute which contains plot options (in
  particular axis labels) is coerced from the options
  attributes of the \code{...} arguments. Should there be
  several options with the same name, priority is on the
  options of the first \code{funsample} in \code{...}.

  If \code{...} contains objects that are neither
  \code{funsample}s nor \code{function}s, an ordinary
  \code{\link{list}} object is returned.

  Assigning \code{NULL} to a function element of in a
  funsample \code{x} is equivalent to removing that element
  from the function sample.
}
\examples{
myfuns <- funsample(list(sin = sin, cos = cos), arglim = c(0, 2*pi))
myfuns2 <- funsample(list(exp = exp, log = log), arglim = c(0, 2*pi))
myfuns <- c(myfuns, tan = tan, myfuns2, f = function(x) x^2)
myfuns(c(0, pi/4, pi/2))
myfuns$f(3)
myfuns$f <- function(x) x - 1
myfuns$g <- function(x) x^2 + 1
myfuns$log <- NULL
myfuns(c(0, pi/4, pi/2, 3))
}
\author{
  Ute Hahn \email{ute@imf.au.dk}
}

