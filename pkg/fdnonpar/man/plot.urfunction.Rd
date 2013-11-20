\name{plot.urfunction}
\alias{plot.urfunction}
\title{Plots an \code{urfunction}.}
\usage{
  \method{plot}{urfunction} (x, ..., includy = NULL)
}
\arguments{
  \item{x}{the \code{urfunction} to be plotted}

  \item{includy}{optional numeric vector containing values
  that are to be included in the \code{ylim} extent of the
  \eqn{y-axis}. Can be used to always start at 0, for
  example.}

  \item{...}{further arguments for controlling the plot,
  see the arguments of \code{\link{curve}}.}
}
\description{
  Plots an \code{urfunction}.
}
\details{
  Plots the function \code{x}, using plot options contained
  in the \code{options} attribute of \code{x}. These
  options can be overridden by \code{...} arguments. Plot
  parameters in \code{...} can be given as
  \code{"\link{simplist}"}s or separately.
}
\examples{
urfu <- urfunction(sin, xlab = "beta")
plot(urfu, from = 0, to = 2*pi)
#compare x- and y- axis labels
plot(sin, from = 0, to = 2*pi)
}

