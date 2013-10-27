\name{plot.fdenvelope}
\alias{plot.fdenvelope}
\title{Plot an envelope object}
\usage{
  \method{plot}{fdenvelope} (x, ..., includy = NULL)
}
\arguments{
  \item{x}{the envelop to be plotted}

  \item{includy}{optional numeric vector containing values
  that are to be included in the \code{ylim} extent of the
  \eqn{y-axis}. Can be used to always start at 0, for
  example.}

  \item{...}{further arguments}
}
\description{
  Plots an object of class \code{fdenvelope}.
}
\details{
  Plotting parameters can be given as
  \code{\link{simplist}} or separately. If not given
  explicitely, default values contained in the list
  \code{x$options} are used. The following elements in the
  list of options in the \code{envelope}-object are used:
  \tabular{ll}{ \code{col} \tab color, \cr \code{lightup}
  \tab numeric between 0 and 1. Regulates how much the
  color of is lightened up,\cr\tab 0 means no extra light.
  \cr \code{xlab, ylab} \tab character, axes labels,
  default to \code{"x"} and \code{"y"}. \cr }
}
\examples{
# load example data and calculate 90 \% envelope
data(ExampleData)
envy <- pwEnvelope(fuda, prob = .9, lightup = .5)
# using a predefined list of options
blau <- simplist(col = "blue", alpha = .6)
plot(envy, blau, main="mein blau", includy = -2)
# add lines and mean
plot(fuda, blau, add = TRUE)
plot(mean(fuda), blau, alpha = 1, lwd = 2, add = TRUE)
}

