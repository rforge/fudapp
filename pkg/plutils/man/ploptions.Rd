\name{ploptions}
\alias{ploptions}
\title{Options for package plutils}
\usage{
  ploptions(...)
}
\arguments{
  \item{...}{option names given as character string, or
  given as \code{name = value}}
}
\value{
  For \code{ploptions()}, a list of set options for package
  \code{plutils}; if invoked with names of options or set
  values, a list of all options contained in the arguments.
}
\description{
  Get or set options for package plutils
}
\details{
  Currently, only one options is used: \tabular{ll}{
  \code{alphamix:}\tab logical, defaults to \code{FALSE}.
  Controls the behaviour of \code{\link{alphacol}}:\cr\tab
  if \code{alphamix == TRUE}, \code{\link{alphacol}}
  returns a color with alpha channel. \cr\tab Otherwise,
  the color is an RGB mixed with the background
  color,\cr\tab thus faking alpha mixing. }
}

