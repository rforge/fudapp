\name{lplot}
\alias{lplot}
\title{Plot objects in a list}
\usage{
  lplot(objects = NULL, allinone = TRUE, ...)
}
\arguments{
  \item{objects}{named list of \code{R}-objects.}

  \item{allinone}{logical, if TRUE, all objects are plotted
  in one window.}

  \item{...}{parameters and parameterlists passed to plot
  method of the objects.}
}
\description{
  Plot all objects given in a list, with parameters that
  also can be given as a list.
}
\details{
  Only objects that belong to classes with a plot method
  are plotted. The plot parameters may be given as lists
  with the same name as the objects list. Parameters in
  named lists are assigned to the object with same name in
  list \code{objects}. Plot parameters not given in a list
  apply to all objects.

  Any \code{add}-parameters only affect the first plotted
  object. Whether or not the plots of the remaining objects
  are added to the first plot, is controlled by parameter
  \code{allinone.}
}
\examples{
# a list of plottable objects: functions
curves <- list(b = cos, a = sin)
lplot(curves, col = list(a = "green", b = "red"), ylim = c(-1, 1), to = pi)
# start a new plot for every object
lplot(curves, allinone = FALSE, col = list(a = "green", b = "red"),
     ylim = c(-1, 1), to = pi)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

