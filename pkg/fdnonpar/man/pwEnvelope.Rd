\name{pwEnvelope}
\alias{pwEnvelope}
\title{Calculate pointwise envelope of a functional data sample}
\usage{
  pwEnvelope(x, prob = 1, ..., lightup = 0.5)
}
\arguments{
  \item{x}{object of class \code{\link{fdsample}}}

  \item{prob}{numeric, covering probability for the
  envelope, see Details.}

  \item{...}{arguments for updating the \code{options} list
  in the result.}

  \item{lightup}{a number between 0 and 1, regulates
  brightness of color in plot.}
}
\value{
  An object of class \code{envelope}, which is essentially
  an \code{fdsample} object with own \code{plot} method.
}
\description{
  Calculates symmetric or non symmetric pointwise envelopes
  of the function values in an \code{fdsample} object.
}
\details{
  The envelope is specified as follows: If \code{prob} is a
  single number between 0 and 1, a central pointwise
  envelope covering \code{prob}*100 percent of the function
  values is calculated. If two numbers are given, they are
  used to specify the lower and upper quantile used for the
  envelope.

  A default value for the brightness of the color is
  calculated from any \code{alpha} argument in the plot
  method and the argument \code{lightup}, namely the
  \eqn{\alpha}-value is corrected to \code{(1-lightup) *
  alpha}. If not given, \eqn{\alpha} is set to one. Thus
  \code{lightup = 0} results in retaining original
  brightness, and \code{lightup = 1} in white color.
}
\examples{
data(ExampleData)
str(pwEnvelope(fuda, 1, col = "blue"))
}

