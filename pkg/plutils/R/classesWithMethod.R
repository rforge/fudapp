#'@title Find classes with a given method
#'@description List all classes that have a given S3 method
#'@param fooGeneric a generic function, or a character string naming 
#'a generic function.
#'@return A character vector with the names of classes for which
#' \code{generic.function} is implemented.
#'@export
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
#'@examples
#'classesWithMethod("plot")
#'classesWithMethod(summary)
#'classesWithMethod("strangeStuff")
classesWithMethod <- function(fooGeneric) {    
  if (!is.character(fooGeneric)) 
      fooGeneric <- deparse(substitute(fooGeneric))
  funame <- paste(fooGeneric, ".", sep = "")
  genericnames <- try(methods(fooGeneric))
  if ("try-error" %in% class(genericnames))
    return(NULL)
  if (length(genericnames) < 1) return(NULL)
  sapply(strsplit(genericnames, funame, fixed = TRUE),
         function(x) do.call(paste, c(as.list(x[-1], sep = funame))))
  # the paste thing ensures that classnames that include the function name + dot
  # are preserved
}
