\name{extract.fdsample}
\alias{extract.fdsample}
\title{Coerce a list of \code{fv} objects into a \code{fdsample}}
\usage{
  extract.fdsample(fvl, valname = NULL)
}
\arguments{
  \item{fvl}{list of spatstat function tables (\code{fv}
  objects),}

  \item{valname}{character, the name of the column to be
  extracted. If not given, the recommended value stored in
  attribute \code{"valu"} of the \code{fv} objects is
  used.}
}
\value{
  An \code{\link{fdsample}} object.
}
\description{
  Transform a list of spatstat function tables
  (\code{\link[spatstat]{fv}} objects) into an
  \code{\link{fdsample}} object, extracting one of the
  columns in each function table.
}
\details{
  An \code{fdsample} stores function values in a matrix.
  The function values in every column of the matrix are
  supposed to refer to the same argument values.
  \code{as.fdsample.fvlist} does not interpolate values in
  \code{fvl}, therefore, the function tables in \code{fvl}
  must have identical argument values.

  The plot options \code{xlab} and \code{ylab} for the
  resulting \code{fdsample} are retrieved from the entries
  in \code{fvl}.
}
\examples{
Ks <- replicate(4, list(estK(rpoispp(100), r = seq(0, 0.2, 0.005))))
Ksample <- extract.fdsample(Ks, "iso")
plot(Ksample, col = "red")
# add the "theo" values to the plot
plot(extract.fdsample(Ks, "theo"), lty = "dashed", add = T)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}
\keyword{nonparametric}
\keyword{robust}
\keyword{spatial}
\keyword{ts}

