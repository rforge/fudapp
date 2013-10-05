\docType{data}
\name{edgecross.Ripley}
\alias{.settype}
\alias{.TYPENAMES}
\alias{correctionkey}
\alias{currenttypeno}
\alias{edgecross.Ripley}
\alias{furthertypeno}
\alias{getIntensity}
\alias{ls.r.args}
\alias{lsclosepairs}
\alias{lspairdist}
\alias{normalizedIntensity}
\alias{peripolyxy}
\alias{ppsplit}
\alias{sostatpp-internal}
\alias{subdivpolyxy}
\title{internal functions of sostatpp package}
\format{chr [1:5] "reweighted" "retransformed" "rescaled" "homogeneous" "scaled-homogeneous"}
\usage{
  edgecross.Ripley(X, r, dphi = pi/4, W = X$window,
    maxweight = 100)

  ls.r.args(r = NULL, eps = NULL, rmaxdefault = 4,
    minscale = NULL, maxscale)

  ppsplit(X, quadrats)

  correctionkey(correction)

  lspairdist(x, y, invscale, lambda)

  lsclosepairs(X, rmax, invscale, lambda, ordered = TRUE,
    what = c("all", "indices"))

  getIntensity(X, lambda = NULL, ...)

  normalizedIntensity(X, lambda = NULL, normpower = 2)

  currenttypeno(x)

  furthertypeno(x)

  .TYPENAMES

  .settype(type, typecode)

  mapstructxy(X, mapxy = identxy)

  peripolyxy(poly)

  subdivpolyxy(poly, newlen)
}
\description{
  functions for use by the package's functions, partly
  slightly documented in the source code
}
\keyword{datasets}
\keyword{internal}

