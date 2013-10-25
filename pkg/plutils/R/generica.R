#'@title Generic functions
#'@rdname generic
#'@name Generic function templates
#'@description Generic functions for use with other packages
#'@param ... parameters passed to class methods.
#'@details
#'  \code{summaryplot} plot a summary of some data
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
NA

#'@rdname generic
#' @export

summaryplot <- function(...) UseMethod("summaryplot")
