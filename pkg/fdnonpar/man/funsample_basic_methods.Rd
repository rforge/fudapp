\name{funsample_basic_methods}
\alias{c.funsample}
\alias{funsample_basic_methods}
\title{Basic methods for class funsample}
\usage{
  \method{c}{funsample} (..., recursive = FALSE)
}
\arguments{
  \item{...}{for method \code{"c"}:\code{funsample} objects
  to be concatenated, otherwise further options passed to
  next methods}

  \item{recursive}{ignored, for compatibility with generic
  function \code{\link{c}}}
}
\description{
  Subsetting, concatenation and printing of
  \code{\link{funsample}}. object
}
\details{
  Method \code{"c"} concatenates the function lists
  contained its arguments (\code{funsample} objects). The
  attribute \code{"arglim"} of the result is obtained as
  intersection of the \code{arglim}s in the arguments. If
  this intersection is empty, the method returns
  \code{NULL} and issues a warning. The \code{options}
  attribute which contains plot options (in particular axis
  labels) is coerced from the options attributes of the
  \code{...} arguments. Should there be several options
  with the same name, priority is on the options of the
  first \code{funsample} in \code{...}.

  If \code{...} contains objects that are not
  \code{funsamples}, a \code{list} is returned. TODO: also
  allow functions to be appended
}
\author{
  Ute Hahn \email{ute@imf.au.dk}
}

