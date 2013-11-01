.onLoad <- function(libname, pkgname) {
    assign(".plutilsStuff", new.env(), envir=parent.env(environment()))
    assign("plopt", list(alphamix = FALSE), .plutilsStuff)
}

#'@title Options for package plutils
#'@description Get or set options for package plutils
#'@return For \code{ploptions()}, a list of set options for package \code{plutils};
#'if invoked with names of options or set values, a list of all options contained
#'in the arguments.
#'@details Currently, only one options is used:
#'\tabular{ll}{
#'\code{alphamix:}\tab logical, defaults to \code{FALSE}. Controls the behaviour of
#'\code{\link{alphacol}}:\cr\tab if \code{alphamix == TRUE}, \code{\link{alphacol}} returns
#'a color with alpha channel. \cr\tab Otherwise, the color is an RGB mixed with the background
#'color,\cr\tab thus faking alpha mixing.
#'}
#'@export
ploptions <- function(...)
{
  arglist <- list(...)
  plopt <- get("plopt", envir = .plutilsStuff)
  if (!length(arglist)) return (plopt)
  nams <- names(arglist) 
  if (is.null(nams))
    nams <- rep("", length(arglist))
  reportonly <- sapply(nams, function(nm) identical(nm, ""))
  replace <- arglist[nams %in% names(plopt) & !reportonly]
  newplopt <- plopt
  newplopt[names(replace)] <- replace
 # now check which elements to output
  for (i in seq_along(nams)) {
    if (identical(nams[i], "") && is.character(arglist[[i]]))
      nams[i] <- arglist[[i]]
  }
  result <- plopt[nams[nams %in% names(plopt)]]
  assign("plopt", newplopt, envir = .plutilsStuff)
  result
}