\name{funsample_list_methods}
\alias{c.funsample}
\alias{funsample_list_methods}
\title{List like methods for class funsample}
\usage{
  \method{c}{funsample} (..., recursive = FALSE)
}
\arguments{
  \item{...}{for method \code{"c"}:\code{funsample} objects
  or functions to be concatenated, otherwise further
  options passed to next methods}

  \item{recursive}{ignored, for compatibility with generic
  function \code{\link{c}}}
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
}
\examples{
myfuns <- funsample(list(sin = sin, cos = cos), arglim = c(0, 2*pi))
myfuns2 <- funsample(list(exp = exp, log = log), arglim = c(0, 2*pi))
myfuns3 <- c(myfuns, tan = tan, myfuns2)
myfuns3(c(0, pi/4, pi/2))
}
\author{
  Ute Hahn \email{ute@imf.au.dk}
}

