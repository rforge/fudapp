% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plotfunsample.R
\name{plotlegend.funsample}
\alias{plotlegend.funsample}
\title{Add legend to plot of a funsample object}
\usage{
\method{plotlegend}{funsample}(funsa, ...)
}
\arguments{
\item{funsa}{\code{\link{funsample}} for which a legend is to be plotted}

\item{...}{additional arguments for plotting the legend, as in \code{\link{legend}}}
}
\description{
Extracts legend information from any \code{\link{urfunction}}s
contained in the \code{funsample} object and plots
the legend.
}
\details{
Does nothing if \code{funsa} does not contain any \code{urfunction}s.
To plot a legend in that case, use the base function \code{\link{legend}} and
define legend contents and parameters manually.
}
\seealso{
\code{\link{legend}} for arguments e.g. concerning positioning and
border of the legend.
}

