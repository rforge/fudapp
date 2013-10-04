\docType{data}
\name{CanadianTemperatures}
\alias{CanadianTemperatures}
\alias{TempAtla}
\alias{TempCont}
\title{Canadian Temperature Data}
\description{
  Daily temperature averages at weather stations in Canada.
  Data imported and converted from the package \code{fda}.
}
\details{
  Two objects of class \code{\link{fdsample}}: \itemize{
  \item \code{TempAtla} data from 15 weather stations with
  atlantic climate, \item \code{TempCont} data from 12
  weather stations with continental climate. }
}
\examples{
data(CanadianTemperatures)

# plot summary of the data together with 80\% pointwise envelopes

summaryplot(TempAtla, light=.4, envprob=.8, col="seagreen")
summaryplot(TempCont, light=.4, envprob=.8, col="brown", add = TRUE)

# replot atlantic temperatures without envelope to uncover the lines

summaryplot(TempAtla, light=.4, col="seagreen", add = TRUE)
}
\keyword{datasets}

