# on a grey autumn sunday... 13.10.2013

#'@title Update lists of parameters
#'@rdname updatelists
#'@name Functions for updating parameter lists
#'@description Joining or updating lists of parameters.
#'@param input style list of input parameters to be updated
#'@param update style list of updates
#'@param ignoreNULLs logical, if \code{TRUE} ignore \code{NULL} values in list \code{update}
#'@return A style list with updated values, see the Details
#'@details
#'  \code{updateList} replaces values of any elements in \code{input} that 
#'  also are contained in \code{update} with new values from \code{update}.
#'
#'  \code{updateNULLs} works like \code{updatelist}, however only \code{NULL} 
#'  values are replaced, other values remain untouched. The value of \code{ignoreNULLs}
#'  does not really matter here.
#'
#'  \code{updateMissing} complements the list \code{input} by elements in 
#'  \code{update}, but does not change existing values in \code{input}, even if 
#'  they are \code{NULL}s.
#'
#'  \code{updateJoin} returns a merged list of \code{input} and \code{update}, 
#'  with priority of non-\code{NULL} values contained in \code{update}.
#'  The result of \code{updatejoin(A, B)} is almost the same as 
#'  \code{updateMissing(B, A)}, up to not forcing to preserve \code{NULL} 
#'  values in \code{B}. By default, \code{ignoreNULLs} is set to \code{FALSE} here,
#'  thus the result also contains \code{NULL} elements from \code{update}, if no
#'  element with same name was present in \code{input}.
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
NA

#'@rdname updatelists
#'@export
#'@family updatelist
#@keywords internal
#'@examples
#'A <- style(a = NULL, b = "b from A", c = "c from A", d = "d from A")
#'B <- style(a = "a from B", b = "b from B", c =  NULL, 
#'          e = "e from B", f = NULL)
#'
#'str(updateList(A, B))
#'# sequence does not matter:
#'str(updateList(A[c(3, 2, 1)], B))
#'# forcing new NULL values
#'str(updateList(A, B, ignoreNULLs = FALSE))
#'
#'str(updateNULLs(A, B))
#'
#'str(updateMissing(A, B))
#'str(updateMissing(A, B, ignoreNULLs = FALSE))
#'
#'str(updateJoin(A, B))
#'str(updateJoin(A, B, ignoreNULLs = TRUE))
#'# this can be used to remove NULL values from a list:
#'str(updateJoin(A, NULL, ignoreNULLs = TRUE))

updateList <- function(input, update, ignoreNULLs = TRUE) {
  if (ignoreNULLs) update <- update[!sapply(update, is.null)]
  replace <- update[names(update) %in% names(input)]
  input[names(replace)] <- replace
  firstclass(input) <- "style"
  input
}

#'@rdname updatelists
#'@export
#@keywords internal
#'@family updatelist

updateNULLs <- function(input, update, ignoreNULLs = TRUE) {
  inulls <- input[sapply(input, is.null)]
  replace <- updateList(inulls, update, ignoreNULLs)
  input[names(replace)] <- replace
  firstclass(input) <- "style"
  input
}

#'@rdname updatelists
#'@export
#@keywords internal
#'@family updatelist

updateMissing <- function(input, update, ignoreNULLs = TRUE) {
  if (ignoreNULLs) update <- update[!sapply(update, is.null)]
  xlist <- c(input, update)
  output <- xlist[!duplicated(names(xlist), fromLast = FALSE)]
  firstclass(output) <- "style"
  output
}

#'@rdname updatelists
#'@export
#@keywords internal
#'@family updatelist

updateJoin <- function(input, update, ignoreNULLs = FALSE) {
  # preserve things in input that are not in update
  result <- updateMissing(update, input, ignoreNULLs = FALSE) 
  result <- updateNULLs(result, input)
  if (ignoreNULLs) result <- result[!sapply(result, is.null)]
  firstclass(result) <- "style"
  result
}
