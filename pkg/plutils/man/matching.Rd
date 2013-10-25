\name{matching}
\alias{matching}
\title{Find matching parameters by name}
\usage{
  matching(x, ..., .notmatching = FALSE)
}
\arguments{
  \item{x}{named list, input elements}

  \item{...}{named lists, functions or function names
  \code{x} is to be matched against, see the details}

  \item{.notmatching}{if \code{TRUE}, the opposite is done:
  return all elements whose names do not match the given
  arguments.}
}
\value{
  a \code{\link{simplist}} containing those elements of
  \code{x} whose names match the arguments, see details.
}
\description{
  Finds elements in a list whose names match some given
  arguments
}
\details{
  For functions or functions names contained in \code{...},
  the argument list is matched. This works only for non
  primitive functions.
}
\examples{
A <- list(col = "red", xlab = "x", u = 13, v = 91)
B <- list(u = 5, t = 2)
str(matching(A, B))
str(matching(A, "plot.default"))
str(matching(A, plot.default, B))

# using predefined lists for graphical parameters, and plot.default parameters
str(matching(A, .graphparams, .plotparams))
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

