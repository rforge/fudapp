\name{setplotstyle}
\alias{setplotstyle}
\title{Set plot style for second order functions}
\usage{
  setplotstyle(...)
}
\arguments{
  \item{...}{named arguments for plot styles corresponding
  to edge corrections. Possible names are \code{theo},
  \code{iso}, \code{trans} and code{border}}
}
\description{
  Set default color, line type, etc for plotting
  second-order functions like the \eqn{K}-function,
  according to border correction, or fot the theoretical
}
\examples{
setplotstyle(theo = simplist(col = "purple", lty = "dotted"))
K <- estK(rpoispp(100), correction = "trans")
plot(K)
}

