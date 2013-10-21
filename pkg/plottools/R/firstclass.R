#'@title Add a class in first place
#'@description Add a new class name to the classes of an R object, and make it
#'the first in the list of classes the objects belongs to.
#'@param x the object the new class is assigned to. Needs to be an object that can be copied.
#'@param value character string with the new class name.
#'@usage firstclass(x) <- value
#'@return The same object x, now belonging (additionally) to the class given
#'as \code{"value"}.
#'@export
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
#'@examples
#'x <- data.frame(u = 1:2, t = 3:4)
#'class(x)
#'firstclass(x) <- "my.first.class"
#'class(x)
#'firstclass(x) <- "data.frame"

"firstclass<-" <- function (x, value) {
  cls <- class(x)
  class(x) <- c(value, cls[is.na(match(cls, value))])
  x
}