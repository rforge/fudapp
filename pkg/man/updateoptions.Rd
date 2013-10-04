\name{updateoptions}
\alias{updateoptions}
\title{Update a list of options, e.g. for plotting}
\usage{
  updateoptions(default, optlist = NULL, ...)
}
\arguments{
  \item{default}{the list to be updated}

  \item{optlist}{optional list of updates}

  \item{...}{optional named pairs, updates for
  \code{default}}
}
\value{
  A list with same names as the elements of \code{default}.
  The value of the element is updated if it was contained
  in \code{optlist} or equal to one of the optional
  explicit \code{...} parameters. The explicit parameters
  overide entries in the list \code{optlist}.
}
\description{
  Compares the optional ... arguments and the list
  \code{optlist} with the list elements in \code{default}
  and returns an updated list. The function was written for
  setting plotting defaults for xy-lists, but may be useful
  also for other lists.
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

