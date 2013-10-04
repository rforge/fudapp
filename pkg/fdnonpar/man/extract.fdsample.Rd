\name{[.fdsample}
\alias{[.fdsample}
\alias{[<-.fdsample}
\title{Extract or replace subset of an fdsample}
\usage{
  \method{[}{fdsample} (x, i)

  \method{[}{fdsample} (x, i) <- value
}
\arguments{
  \item{x}{an object of class \code{"fdsample"}.}

  \item{i}{subset index.}

  \item{value}{Replacement for the subset, an array or an
  fdsample object.}
}
\description{
  Curves (rows of y-values) are extracted from or replaced
  in the sample.
}
\details{
  Currently only possible if \code{x$args} is
  one-dimensional. Replacement y-values have to be of same
  dimension as the original.
}
\seealso{
  \code{\link{fdsample}} for details on the class.
}

