\docType{package}
\name{plutils-package}
\alias{plutils}
\alias{plutils-package}
\title{Plotting with Style}
\description{
  Provides utilities for handling plot and graphic
  parameters, plotting lists of objects, colour tools.
  Plotting with style: plot parameters can be given as
  lists.
}
\details{
  \strong{Functions for plotting with style, and plotting
  lists} \tabular{ll}{ \code{\link{splot}} \tab plot using
  a list of parameters (a "\code{\link{simplist}}")
  \cr\code{\link{lplot}} \tab plot all objects in a list
  \cr\code{\link{simplist}} \tab collect parameters in a
  list } \strong{Utility functions} \tabular{ll}{
  \code{\link{alphacol}} \tab control transparency /
  brightness of a colour \cr\code{\link{matching}} \tab
  match a list of parameters by name, \cr\tab useful for
  sorting out parameters that throw warnings \cr\tab when
  used in plot methods.  \cr\code{\link{firstclass<-}} \tab
  add a class to an object and forward this class \cr\tab
  to the first place in the object's class list }
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

