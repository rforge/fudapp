\name{lplot}
\alias{lplot}
\title{Plot objects in a list}
\usage{
  lplot(objects = NULL, ..., allinone = TRUE,
    .plotmethod = "plot")
}
\arguments{
  \item{objects}{named list of \code{R}-objects.}

  \item{...}{parameters and parameterlists passed to plot
  method of the objects.}

  \item{allinone}{logical, if TRUE, all objects are plotted
  in one window.}

  \item{.plotmethod}{a generic function for plotting, or a
  character string naming a generic function. Defaults to
  \code{"plot"} and should usually not be changed.}
}
\description{
  Plot all objects given in a list, with parameters that
  can be given as a named list.
}
\details{
  Plot parameters may be given as lists with the same name
  as the objects list. Parameters in named lists are
  assigned to the object with same name in list
  \code{objects}. Plot parameters not given in a list apply
  to all objects. Plot parameters may also be grouped as
  \code{\link{simplist}}s, since \code{lplot} internally
  calles \code{\link{splot}}.

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

# using plot styles
curves <- list(b = cos, a = sin)
mystyles <- list(a = simplist(col = "red", lwd = 2), b = simplist(col = "green"))
lplot(curves, mystyles, ylim = c(-1, 1), to = 2*pi)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

