\name{fdsample}
\alias{fdsample}
\title{Make a functional data sample}
\usage{
  fdsample(args, fvals, optlist, ...)
}
\arguments{
  \item{args}{numeric, array, the function arguments,
  dimension dimarg}

  \item{fvals}{numeric, array of function values,
  dimension: dimarg x groupsize}

  \item{optlist}{optional list of (plot) options, see
  \code{\link{plot.fdsample}}}

  \item{...}{plot options, see \code{\link{plot.fdsample}}}
}
\value{
  a list with elements \tabular{ll}{ \code{args} \tab{the
  function arguments}\cr \code{fvals} \tab{the function
  value samples}\cr \code{dimarg} \tab{integer, dimension
  of \code{x}}\cr \code{groupsize} \tab{integer, number of
  functions y included in the list}\cr \code{options} \tab
  list of plot options, see \code{\link{plot.fdsample}} }
}
\description{
  Generate an object of class \code{fdsample}.
}

