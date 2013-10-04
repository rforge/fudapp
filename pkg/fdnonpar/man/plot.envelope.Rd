\name{plot.envelope}
\alias{plot.envelope}
\title{Plot an envelope object}
\usage{
  \method{plot}{envelope} (x, ploptions = NULL,
    includy = NULL, add = F, ...)
}
\arguments{
  \item{x}{the envelop to be plotted}

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
  Plots an object of class \code{\link{envelope}}.
}
\details{
  Plotting parameters can be given as list
  \code{"ploptions"} or separately. If not given
  explicitely, default values contained in the list
  \code{x$options} are used. The following elements in the
  list of options in the \code{envelope}-object are used:
  \tabular{ll}{ \code{col} \tab color, \cr \code{light}
  \tab numeric between 0 and 1. Regulates how much the
  color of is lightened up,\cr\tab 0 means no extra light.
  \cr \code{xlab, ylab} \tab character, axes labels,
  default to \code{"x"} and \code{"y"}. \cr }
}
\examples{
# load example data and calculate 90 \% envelope
data(ExampleData)
envy <- pwEnvelope(fuda, prob = .9, lightup = .9)
# using a predefined list of options
blau <- list(col = "blue")
plot(envy, blau, main="mein blau", includy = -2)
# add lines and mean
plot(fuda, blau, light = 0.4, add = TRUE)
plot(mean(fuda), blau, light = 0, lwd = 2, add = TRUE)
}

