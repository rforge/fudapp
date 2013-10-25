\name{sostatpp-internal}
\alias{.settype}
\alias{currentType<-}
\alias{edgecross.Ripley}
\alias{getIntensity}
\alias{longTypeName}
\alias{ls.r.args}
\alias{lsclosepairs}
\alias{lspairdist}
\alias{mapstructxy}
\alias{normalizedIntensity}
\alias{peripolyxy}
\alias{sostatpp-internal}
\alias{subdivpolyxy}
\title{Internal functions of sostatpp package}
\usage{
  getIntensity(X, intensity = NULL, ...)

  normalizedIntensity(X, intensity = NULL, normpower = 2)

  edgecross.Ripley(X, r, dphi = pi/4, W = X$window,
    maxweight = 100)

  ls.r.args(r = NULL, eps = NULL, rmaxdefault = 4,
    minscale = NULL, maxscale)

  lspairdist(x, y, invscale, lambda)

  lsclosepairs(X, rmax, invscale, lambda, ordered = TRUE,
    what = c("all", "indices"))

  currentType(x) <- value

  longTypeName(type)

  .settype(type, typecode)

  mapstructxy(X, mapxy = identxy, ...)

  peripolyxy(poly)

  subdivpolyxy(poly, newlen)
}
\description{
  Functions for use by the package's functions, partly
  slightly documented in the source code
}
\keyword{internal}

