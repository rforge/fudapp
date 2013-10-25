# style lists

#'@title Construct a Style List
#'@description Construct an object of class \code{simplist}, a list with unique names.
#'@param ... objects, should be named if not \code{simplist} objects.
#'@param .NULL.rm if \code{TRUE}, arguments of value \code{NULL} are ignored.
#'  Default: \code{FALSE}.
#'@return an object of class \code{simplist}, a list with uniquely named elements.
#'@details Tagged arguments have priority from right to left, that is, if
#'arguments with the same name occur more than once, the value of the last one
#'is picked.
#'
#'Arguments of class \code{"simplist"} themselves are resolved before integrating
#'into the resulting unique list.
#'
#'The class name was chosen because the main purpose for \code{simplist}s is to
#'define plotting styles for the use with function \code{\link{splot}}.
#'@seealso splot
#'@export
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
#'@examples
#'A <- simplist(a = 1, b = "cool", a = 3)
#'str(A)
#'B <- simplist(a = 2, A, b = NULL, c = list(x = 4, y = 5))
#'str(B)
#'str(simplist(A, B))
#'str(simplist(A, B, .NULL.rm = TRUE))

simplist <- function(..., .NULL.rm = FALSE){
  dotargs <- list(...)
  # resolve simplists in dotargs
  result <- list()
  #if (length(dotargs) < 1) return(result)
  for (i in seq_along(dotargs))
  {
    elem <- dotargs[[i]]
    result <- c(result, if (is.simplist(elem)) elem else dotargs[i])
  }
  # remove NULLs
  if (.NULL.rm) result <- result[!sapply(result, is.null)]
  if (all(is.null(names(result)))) names(result) <- rep("", length(result))
  # remove duplicates from right to left
  result <- result[!duplicated(names(result), fromLast = TRUE)]
  firstclass(result) <- "simplist"
  result
}

#'@title Check whether an object is a simplist
#'
#'@description Checks if an object belongs to class \code{"simplist"}.
#'
#'@param x any \code{R} object
#'@return \code{TRUE} if \code{x} belongs to class \code{"simplist"}, otherwise \code{FALSE}.
#'@export
#'@seealso \code{\link{simplist}} for a constructor of this class.
# @author Ute Hahn,  \email{ute@@imf.au.dk}

is.simplist <- function(x) inherits(x, "simplist")
