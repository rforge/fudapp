\name{classesWithMethod}
\alias{classesWithMethod}
\title{Find classes with a given method}
\usage{
  classesWithMethod(fooGeneric)
}
\arguments{
  \item{fooGeneric}{a generic function, or a character
  string naming a generic function.}
}
\value{
  A character vector with the names of classes for which
  \code{generic.function} is implemented.
}
\description{
  List all classes that have a given S3 method
}
\examples{
classesWithMethod("plot")
classesWithMethod(summary)
classesWithMethod("strangeStuff")
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

