\name{updateNULLoptions}
\alias{updateNULLoptions}
\title{Update NULL values in a list}
\usage{
  updateNULLoptions(default, optlist = NULL, ...)
}
\arguments{
  \item{default}{the list to be updated}

  \item{optlist}{optional list of updates}

  \item{...}{optional named pairs, updates for
  \code{default}}
}
\value{
  a list with same names as the elements of \code{default}

  A list with same names as the elements of \code{default}.
  The value of an element is updated if it was originally
  equal to \code{NULL}, and contained in \code{optlist} or
  one of the optional explicit \code{...} parameters. The
  explicit parameters overide entries in the list
  \code{optlist}.
}
\description{
  Compares the optional ... arguments with the list
  elements in \code{default} and returns an updated list.
  The function was written for setting plotting defaults
  for xy-lists, but may be useful also for other lists.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

