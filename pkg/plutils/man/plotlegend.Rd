\name{plotlegend}
\alias{plotlegend}
\alias{plotlegend.default}
\title{Add object specific legends to plots}
\usage{
  plotlegend(...)

  plotlegend.default(...)
}
\arguments{
  \item{...}{arguments specifying the graphic legend,}
}
\description{
  Generic function to add a legend to a plot, allowing to
  for arguments given as simplists.
}
\details{
  Generic function for plotting legends, intended for use
  with objects that carry legend information. The default
  method is a wrapper for the base function
  \code{\link{legend}}, and allows to use
  \code{\link{simplist}}s.
}
\examples{
# plot some curves
plot(cos, col = "red", to = pi, ylab = "y")
plot(sin, col = "green", to = pi, add = TRUE)
# use of simplists:
legendstuff <- simplist(legend = c("y = sin(x)", "y = cos(x)"), col = c("green", "red"))
plotlegend("bottomleft", legendstuff, lty = "solid")
}
\seealso{
  \code{\link{legend}} for the usual parameters.
}

