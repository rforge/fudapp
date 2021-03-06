% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/predefines.R
\docType{data}
\name{Predefined parameter lists and options}
\alias{.graphparams}
\alias{.plotoptions}
\alias{.plotparams}
\alias{Predefined parameter lists and options}
\title{Predefined lists}
\format{named lists}
\usage{
.plotparams

.graphparams

.plotoptions
}
\description{
Predefined lists of parameters, for convenience
}
\details{
\tabular{ll}{
\code{.plotparams} \tab parameters that are used by \code{\link{plot.default}}, and that may
\cr\tab cause warnings in low level plotting functions, but not in \code{\link{plot.default}}
\cr\code{.graphparams} \tab graphical parameters that can be set by \code{\link{par}},
\cr\tab no risk when passed to low level plotting functions.
\cr\code{.plotoptions} \tab options for the behaviour of functions in the
\code{plottools} package.
}
}
\keyword{datasets}

