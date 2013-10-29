\docType{data}
\name{DeltaKBronze}
\alias{DeltaKBronze}
\alias{DeltaKBronze.s}
\alias{DeltaKBronze.t}
\title{Delta K_dir estimates for bronzefilter point pattern}
\description{
  Delta K_dir estimates for \pkg{spatstat} point pattern
  \code{bronzefilter}, as in Hahn & Jensen (2013)
}
\details{
  Two list of two \code{\link{fdsample}}-objects,
  corresponding to the Delta K_dir function estimated on
  two subsets of the bronze filter point pattern, see Hahn
  & Jensen (2013). The data sets \code{DeltaKBronze.s} and
  \code{DeltaKBronze.t} contain estimates of the rescaled
  and retransformed Delta K_dir function, respectively.

  The list have elements \code{high} and \code{low} for the
  functions estimated high and low point density subsets of
  the point pattern.
}
\examples{
# require plutils which contains the generic to "summaryplot"
require(plutils)
data(DeltaKBronze)

# plot summary for rescaled DeltaK_dir

summaryplot(DeltaKBronze.s$high, col="red")
summaryplot(DeltaKBronze.s$low,  col="blue", add = TRUE)

# test significance

with(DeltaKBronze.t, tL2.permtest(high, low))
}
\keyword{datasets}

