\name{quadratsplot}
\alias{quadratsplot}
\title{Plot of point pattern with test quadrats}
\usage{
  quadratsplot(x, quads1, quads2, style1 = NULL,
    style2 = NULL, bgcol1 = NULL, bgcol2 = NULL,
    quads0 = NULL, style0 = list(col = "white"),
    bgcol0 = NULL, light = 0.75, ...)
}
\arguments{
  \item{x}{point pattern, object of class
  \code{\link{sostpp}} or \pkg{spatstat} class
  \code{\link{ppp}}}

  \item{quads1,quads2}{test quadrats, a list of windows
  (\code{"\link{owin}"}) or a tessellation
  (\pkg{spatstat}-object \code{"\link{tess}"})}

  \item{quads0}{optional unused test quadrats}

  \item{style1,style2,style0}{plotting parameters, see
  details}

  \item{bgcol1,bgcol2,bgcol0}{colors, see details}

  \item{light}{default lightness of the background, a
  number between 0 (dark) and 1 (white)}

  \item{...}{further arguments for plotting}
}
\description{
  Plot a point pattern with two sets of coloured test
  quadrats, meant as a visualisation supplement for the
  function \code{\link{Kpermute.test}}.
}
\details{
  One of the arguments \code{bgcol} or \code{style} has to
  be given. If both are specified, \code{bgcol} overrides
  \code{style}. Lightness \code{light} applies to the
  background colors, and is overridden by lightness
  specified in the \code{style}s.
}
\examples{
# tile the beilschmiedia pattern evenly into many quadrats, and count points
data(bei)
allquads <- tiles(quadrats(bei, nx=8, ny=4))
npts <- sapply(allquads, function(w) npoints(bei[w]))

# select quadrats with more than 30 points, and split into three sets
enoughpoints <- npts > 30
nmedian <- median(npts[enoughpoints])
few <- npts <= nmedian & enoughpoints
many <- npts >= nmedian

quads1 <- allquads[many]
quads2 <- allquads[few]
quads0 <- allquads[!enoughpoints]

redstyle <- list(col = "red", light = 0.5)
bluestyle <- list(col = "blue")
quadratsplot(bei, quads1, quads2, redstyle, bluestyle)

# overriding some options
quadratsplot(bei, quads1, quads2, redstyle, bluestyle,
             light=.8, pch=16, cex=.4)

# also unused quadrats
quadratsplot(bei, quads1, quads2, redstyle, bluestyle,
             light = .8, pch = 16, cex = .4,
             quads0 = quads0, bgcol0 = "yellow"
     )
}

