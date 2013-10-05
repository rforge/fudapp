\name{backtransformed}
\alias{backtransformed}
\title{Obtain backtransformed pattern}
\usage{
  backtransformed(X)
}
\arguments{
  \item{X}{a retransformed s.o.s. typed point pattern,
  object of class \code{{sostpp}}.}
}
\value{
  a homogeneous s.o.s. typed point pattern of class
  \code{{sostpp}} with points in \code{x0} and \code{y0}.
  The type of the result is set to both homogeneous and
  scaled-homogeneous, and is typemarked with constant
  intensity and constant inverse scale factor.
}
\description{
  Extract the backtransformed template from a retransformed
  point process.
}
\details{
  As retransformed s.o.s. typed point pattern, \code{X} has
  an element \code{extra}, a list containing information
  about the transformation. If this list contains an
  element \code{invtrafo}, this element is taken to be a
  function and used to backtransform the window. If the
  original transformation was a gradient transformation,
  the coordinates of the window are interpolated.
  Currently, no saftey precautions if \code{invtrafo}
  returns rubbish. If no element \code{invtrafo} is present
  in \code{X$extra}, the original window is retained, which
  also might result in rubbish.
}
\examples{
bronzetra <- retransformed(bronzefilter, "gradx")
bronzetemplate <- backtransformed(bronzetra)
plot(bronzetemplate, use.marks = FALSE)
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

