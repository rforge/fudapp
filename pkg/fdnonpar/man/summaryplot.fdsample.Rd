\name{summaryplot.fdsample}
\alias{summaryplot.fdsample}
\title{Plot summary of an fdsample object}
\usage{
  \method{summaryplot}{fdsample} (x, ..., sumfun = "mean",
    fopt = list(), envprob = NULL, includy = NULL, add = F)
}
\arguments{
  \item{x}{the fdsample to be plotted}

  \item{sumfun}{the summary function. If NULL, no summary
  function is plotted. Defaults to \code{"mean"}.}

  \item{fopt}{list of options for \code{sumfun}.}

  \item{envprob}{coverage of the envelope, defaults to
  NULL: no envelope is plotted.}

  \item{includy}{optional numeric vector containing values
  that are to be included in the \code{ylim} extent of the
  \eqn{y-axis}. Can be used to always start at 0, for
  example.}

  \item{add}{if \code{FALSE} (default), a new plot is
  started, if \code{TRUE}, adds to existing plot}

  \item{...}{further arguments}
}
\description{
  Plots the individual functions or a pointwise envelope,
  as well as a summary function, of function values coerced
  in an object of class \code{\link{fdsample}}.
}
\details{
  Plotting parameters for the individual functions can be
  given as list \code{"ploptions"} or separately. If not
  given explicitely, default values contained in the list
  \code{x$options} are used. If these are set to
  \code{NULL}, the global graphic parameters as reported by
  \code{\link{par}} are assumed.

  \emph{Individual functions} are plotted using the
  parameters \tabular{ll}{ \code{col} \tab character or
  numeric, color, \cr\code{lwd} \tab numeric, line width,
  \cr\code{lty} \tab character or numeric, line type,
  \cr\code{alpha} \tab numeric between 0 and 1, alpha
  value, controls colour opacity / brightness, defaults to
  1. } For the \emph{summary function}, the parameters are
  \tabular{ll}{\code{col.sum} \tab character or numeric,
  color, defaulting to \code{col} \cr\code{lwd.sum} \tab
  numeric, line width, defaulting to \code{2 * lwd},
  \cr\tab thus the summary function always plots stronger
  than the individual curves, \cr\code{lty.sum} \tab
  character or numeric, line type, defaults to
  \code{lty}.\cr } Plotting of \emph{envelopes} is
  controlled by the parameters \tabular{ll}{ \code{col.env}
  \tab character or numeric, color, defaults to \code{col}
  \cr\code{alpha.env} \tab numeric between 0 and 1, alpha
  value, defaults to Defaults to \code{0.5*alpha}, \cr\tab
  thus the envelope will always plot lighter than
  individual functions. \cr } The summary function given in
  \code{x} is used, if not overridden by the parameter
  \code{sumfun}. By default this is the mean.

  To suppress plotting of the summary function or the
  individual functions, set \code{sumfun = NULL} or
  \code{lwd = 0}, respectively.

  If \code{envprob} is a single number between 0 and 1, a
  central pointwise envelope covering \code{envprob}*100
  percent of the function values is plotted. If two numbers
  are given, they are used to specify the lower and upper
  quantile used for the envelope. To suppress plotting of
  an envelope, let \code{envprob = NULL}.
}
\examples{
# load data, containing an example set "fuda"
data(ExampleData)

# plot mean and median in a minimax envelope

summaryplot(fuda, envprob = 1)
summaryplot(fuda, envprob = NULL, sumfun = median,
          add = TRUE, col = "red", lwd = 0)

# using a predefined list of options,
# summary function will be plotted in black (default)

blau <- simplist(col = "blue", alpha.env = .8, col.smf = "green")
summaryplot(fuda, sumfun = "mean", envprob = .8, blau, alpha = .7)
# adds individual lines, overriding light options contained in fuda and blau
}

