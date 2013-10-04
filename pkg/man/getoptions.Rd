\name{getoptions}
\alias{getoptions}
\title{Get options}
\usage{
  getoptions(x, optlist = NULL, ...)
}
\arguments{
  \item{x}{list with element \code{options} to be updated}

  \item{optlist}{optional list of updates}

  \item{...}{optional named pairs, updates for
  \code{default}}
}
\value{
  a list, copy of \code{x$options}, with updated elements
}
\description{
  Update the options element in an \code{\link{fdsample}}
  object or another list with an element \code{$options},
  according to arguments.
}
\details{
  A copy of \code{x$options} is updated according to the
  remaining arguments, where arguments given as \code{...}
  have highest priority. The element names may be
  unambiguously abbreviated.

  If no arguments are given, the \code{options} element of
  list \code{x} is returned as is.
}
\examples{
# load simulated example data
data(ExampleData)
str(fuda$options)
blue <- getoptions(fuda, col = "blue")
str(blue)
# abbreviating names and using a predefined list
bluegreen <- getoptions(fuda, blue, col.i = "green", light = .5)
str(bluegreen)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

