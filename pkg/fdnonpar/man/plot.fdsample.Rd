\name{plot.fdsample}
\alias{plot.fdsample}
\title{Plot an fdsample object}
\usage{
  \method{plot}{fdsample} (x, ploptions = NULL,
    includy = NULL, add = F, ...)
}
\arguments{
  \item{x}{the fdsample to be plotted}

  \item{ploptions}{optional list of plotting parameters,
  see the Details}

  \item{includy}{optional numeric vector containing values
  that are to be included in the \code{ylim} extent of the
  \eqn{y-axis}. Can be used to always start at 0, for
  example.}

  \item{add}{if \code{FALSE} (default), a new plot is
  started, if \code{TRUE}, adds to existing plot}

  \item{...}{further arguments}
}
\description{
  Plots the individual functions coerced in an object of
  class \code{\link{fdsample}}.
}
\details{
  Plotting parameters can be given as list
  \code{"ploptions"} or separately. If not given
  explicitely, default values contained in the list
  \code{x$options} are used. The list of options in an
  \code{fdsample}-object has elements \tabular{ll}{
  \code{col} \tab color for plotting the individual curves,
  defaults to "black" \cr\code{light} \tab numeric between
  0 and 1. Regulates how much the color of individual
  \cr\tab functions is lightened up, 0 means no extra
  light. Defaults to 0. \cr\code{lwd} \tab numeric, line
  width for individual function. Defaults to 1.
  \cr\code{lty} \tab line type (character or numeric),
  defaults to "solid". \cr\code{xlab,ylab} \tab character,
  axes labels, default to \code{"x"} and \code{"y"}.
  \cr\code{main} \tab character, axes labels, default to
  \code{""}. }
}
\examples{
# load example data
data(ExampleData)
plot(fuda)
# using a predefined list of options
blau <- list(col = "blue", light = .6)
plot(fuda, blau, main="mein blau", includy = -2)
# add mean
plot(mean(fuda), blau, light = 0, lwd = 2, add = TRUE)
}
\seealso{
  \code{\link{getoptions}}
}

