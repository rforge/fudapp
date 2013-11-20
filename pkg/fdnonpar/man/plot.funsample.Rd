\name{plot.funsample}
\alias{plot.funsample}
\title{Plot a funsample object}
\usage{
  \method{plot}{funsample} (x, ..., includy = NULL)
}
\arguments{
  \item{x}{the funsample to be plotted}

  \item{includy}{optional numeric vector containing values
  that are to be included in the \code{ylim} extent of the
  \eqn{y-axis}. Can be used to always start at 0, for
  example.}

  \item{...}{further arguments for controlling the plot.}
}
\description{
  Plots the individual functions contained in an object of
  class \code{\link{funsample}} in one plot.
}
\details{
  This method requires that the functions in code{x} are
  univariate, which however is not checked.

  Brightness / opacity of the curves can be controlled by
  setting \code{alpha} to a number between 0 and 1, see the
  description of function \code{\link{alphacol}} in package
  \code{plottools.}

  The plot method \code{plot.fdsample} works like the
  function \code{\link{splot}} from package
  \code{plottools}. In particular, plot parameters can be
  given as \code{"\link{simplist}"}s or separately.
}
\examples{
myfuns <- funsample(list(sin = sin, cos = cos), arglim = c(0, 2*pi))
plot(myfuns)
# using a predefined list of options, from plutils package
require(plutils)
blau <- simplist(col = "blue", alpha = 0.4)
plot(myfuns, blau, includy = -2)
# plot options can also be included when a funsample is generated:
trigostyle <- list(sin = simplist(col = "red", lty = "dashed"),
                  cos = simplist(col = "green"))
myfuns <- funsample(list(sin = sin, cos = cos), arglim = c(0, 2*pi), trigostyle)
plot(myfuns)
}
\seealso{
  \code{\link{alphacol}} on defining transparent colors,
  and \code{\link{splot}} for the evaluation of plot
  parameters.
}

