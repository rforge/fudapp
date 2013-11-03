.onLoad <- function(libname, pkgname) {
    assign(".plutilsStuff", new.env(), envir=parent.env(environment()))
    assign("plopt", simplist(alphamix = FALSE), .plutilsStuff)
}

#'@title Options for package plutils
#'@description Get or set options for package plutils
#'@param ... option names given as character string, or given as \code{name = value}.
#'Alternatively, options can be passed as \code{\link{simplist}}s.
#'@return For \code{ploptions()}, a \code{simplist} of set options for package \code{plutils};
#'if invoked with names of options, a list of all options contained in the arguments. 
#'If called with \code{name = value}, no visible result is returned.
#'@details 
#'It is possible to set any options - this might be useful for global options of
#'other packages. This can however also be done with the base function \code{options}, the 
#'only difference is that \code{ploptions} returns a \code{\link{simplist}}, and resolves
#'\code{\link{simplist}} arguments, but not \code{\link{list}} arguments.
#'
#'Currently, only one options is used by package \code{plutils}:
#'\tabular{ll}{
#'\code{alphamix:}\tab logical, defaults to \code{FALSE}. Controls the behaviour of
#'\code{\link{alphacol}}:\cr\tab if \code{alphamix == TRUE}, \code{\link{alphacol}} returns
#'a color with alpha channel. \cr\tab Otherwise, the color is an RGB mixed with the background
#'color,\cr\tab thus faking alpha mixing.
#'}
#'@seealso The base function \code{\link{options}} is similar.
#'@export
#'@examples
#'ploptions() 
#'# add a new option
#'ploptions(schnurz = "piep")
#'ploptions()
#'# save options
#'oldopt <- ploptions()
#'# change old option, and add a new one
#'ploptions(schnurz = pi, a = 5)
#'ploptions()
#'# reset old options, and change the new one from the step before
#'ploptions(oldopt, a = 3)
#'ploptions()
ploptions <- function(...)
{
  arglist <- simplist(...)
  plopt <- get("plopt", envir = .plutilsStuff)
  if (!length(arglist)) return (plopt)
  nams <- names(arglist) 
  if (is.null(nams))
    nams <- rep("", length(arglist))
  reportonly <- sapply(nams, function(nm) identical(nm, ""))
  invisbl <- (sum(!reportonly) > 0)
   
  updates <- arglist[!reportonly]
  firstclass(updates) <- "simplist" 
  # should perhaps change behaviour of simplist when subsetting
  
  newplopt <- simplist(plopt, updates)
    
 # now check which elements to output
  for (i in seq_along(nams)) {
    if (identical(nams[i], "") && is.character(arglist[[i]]))
      nams[i] <- arglist[[i]]
  }
  result <- plopt[nams[nams %in% names(plopt)]]
  firstclass(result) <- "simplist"
  assign("plopt", newplopt, envir = .plutilsStuff)
  if (invisbl) invisible(result) else return(result)
}