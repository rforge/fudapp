% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/fdsample.R, R/optionstuff.R
\docType{data}
\name{defaultoptions.fdsample}
\alias{defaultoptions.fdsample}
\alias{matchingoptions}
\alias{uniquelist}
\alias{unusedoptions}
\title{Internal functions for class \code{fdsample}}
\format{\preformatted{List of 7
 $ xlab   : chr "t"
 $ ylab   : chr "X(t)"
 $ main   : chr ""
 $ lightup: num 0
 $ col    : NULL
 $ lwd    : NULL
 $ lty    : NULL
 - attr(*, "class")= chr [1:2] "simplist" "list"
}}
\usage{
defaultoptions.fdsample

matchingoptions(default = defaultoptions.fdsample, optlist, ...)

unusedoptions(default = defaultoptions.fdsample, optlist = NULL, ...)

uniquelist(xlist)
}
\description{
Internal functions for dealing with objects of class \code{fdsample}, and plotting options
}
\author{
Ute Hahn,  \email{ute@imf.au.dk}

Ute Hahn,  \email{ute@imf.au.dk}
}
\keyword{datasets}
\keyword{internal}
\keyword{{internal}}

