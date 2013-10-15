#'@title Find matching parameters by name

#'@description Finds elements in a list whose names match some given arguments
#'@param x named list, input elements
#'@param ... named lists, functions or function names \code{x} is to be matched against,
#' see the details
#'@param .notmatching if \code{TRUE}, the opposite is done: return all elements
#'whose names do not match the given arguments.
#'@return a list containing those elements of \code{x} whose names match the
#'arguments, see details.
#'@details For functions or functions names contained in \code{...}, the argument
#'list is matched. This works only for non primitive functions.
#'@export
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
#'@examples
#'A <- list(col = "red", xlab = "x", u = 13, v = 91)
#'B <- list(u = 5, t = 2)
#'str(matching(A, B))
#'str(matching(A, "plot.default"))
#'str(matching(A, plot.default, B))
#'
#'# using predefined lists for graphical parameters, and plot.default parameters
#'str(matching(A, .graphparams, .plotparams))

matching <- function(x, ..., .notmatching = FALSE)
{
  stopifnot(is.list(x))
  if (length(x) < 1) return(list())
  dotargs <- as.list(c(..., "", recursive = FALSE))
    # the "" forces something reasonable if only one element is in ...
  # removing the "" again:
  dotargs <- dotargs[-length(dotargs)]
  allnames <- character(0)
  rawnames <- names(dotargs)
  if(is.null(rawnames)) rawnames <- rep("", length(dotargs))
  nameless <- sapply(rawnames, function(n) is.null(n) || (n==""))
  isfun <-  sapply(dotargs, function(x) is.function(x) || (
    is.character(x) && (x !="")
    && exists(x) && is.function(get(x))))
  for (i in seq_along(dotargs))
  {
    argi <- dotargs[[i]]
    allnames <- c(allnames,
                  if (!nameless[i]) rawnames[i]
                  else {if (isfun[i]) names(formals(argi))})
  }
  matches <- names(x) %in% allnames
  if (.notmatching) matches <- ! matches
  x[matches]
}
