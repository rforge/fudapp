\name{urfunction}
\alias{is.urfunction}
\alias{urfunction}
\title{urfunctions - univariate real valued functions}
\usage{
  urfunction(fun, ...)

  is.urfunction(x)
}
\arguments{
  \item{fun}{a function that is to be turned into an
  \code{urfunction}}

  \item{...}{additional parameters to be stored in
  attribute \code{"options"}, in particular options for
  plotting. Can be given as \code{\link{simplist}}s.}

  \item{x}{an \code{R} object to be checked.}
}
\description{
  Coercing to, and checking \code{"urfunction"}s

  \code{is.urfunction} returns \code{TRUE} if \code{x} is
  an object of class \code{urfunction}
}
\details{
  \code{urfunction} adds additional information (plot
  options) and the class \code{"urfunction"} to a function
  \code{foo}. It is assumed that the function \code{foo}
  takes only one real valued argument, and returns a real
  value. To ensure this is left to the user, since it
  cannot be checked for primitives.

  \code{"urfunction"} objects have an attribute
  \code{"options"} which is a \code{simplist} of options
  used for plotting, in particular axis labels and the
  title (\code{main}).
}

