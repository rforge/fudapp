# plot objects given in a list

#@title Reassemble a list of arguments according to a list of names
#@description Reorder and reassemble lists of arguments, according to a given vector
# of name tags.
#@param arglist list, the list that is to be reassembled,
#@param tagnames character, the names to be sortet after.
#@return a list of lists with names c(sortnames, "...").
#@details The input \code{arglist} is a list of lists or simple elements. Any lists contained in
#arglist are searched for names contained in \code{tagnames}. If elements with appropriate
# names are found, they constitute the new lists returned by the function.
# Elements in arglist that are not lists are pooled in the "..." component of the
# returned list.
#
# Note: to avoid taking list arguments into parts, enclose them in a list, see the Examples
# This function was written for processing plot arguments.
# @author Ute Hahn,  \email{ute@@imf.au.dk}
#@export
#@examples
#arglist <- list(x = "a", y = list(a = 1, b = 2),
#                z = list(a = 3, b = 4, c = 5))
#nametags <- c("a", "b", "d", "...")
#newlist <- reorderList(arglist, nametags)
#str(newlist$a)
##unassigned elements
#str(newlist$...)
## protecting list argument y
#arglist.p <- list(x= "a", y = list(list(a = 1, b = 2)),
#                  z = list(a = 3, b = 4, c = 5))
#newlist.p <- reorderList(arglist.p, nametags)
#str(newlist.p$...)

#'@title Internal functions
#'@rdname plutils-internal
#'@name Internal functions
#'@description Utility functions
NA

#' @rdname plutils-internal
#' @keywords internal

retagList <- function (arglist, tagnames)
{
  argnames <- names(arglist)
  result <- as.list(rep(list(list()), length(tagnames)))
  names(result) <- tagnames
  # provide space for the unnamed ones
  result$... <- list()
  for(i in seq_along(arglist))
  {
    arg <- arglist[[i]]

    if (is.list(arg))
    {
      namesarg <- names(arg)
      if ((length(arg) == 1) && is.null(namesarg)) result[["..."]][[argnames[i]]] <- arg[[1]]
      else{
      # sort its elements and distribute them to the rights slots in the result
      # use only known names
      slots <- match(names(arg), tagnames)
      for (j in seq_along(arg))
      {
        if (!is.na(slots[j])) result[[slots[j]]][[argnames[i]]]  <- arg[[j]]
      }
    }}
    else
      result[["..."]][[argnames[i]]] <- arg
  }
  return(result)
}

#'@title Plot objects in a list
#'@description Plot all objects given in a list, with parameters that can be given as
#'a named list.
#'@param objects named list of \code{R}-objects.
#'@param ... parameters and parameterlists passed to plot method of the objects.
#'@param allinone logical, if TRUE, all objects are plotted in one window.
#'@param .plotmethod a generic function for plotting, or a character string naming
#'a generic function. Defaults to \code{"plot"} and should usually not be changed.
#'@details
# Only objects that belong to classes with a plot method are plotted.
#'Plot parameters may be given as lists with the same name as the objects list.
#' Parameters in named lists are assigned to the object with same name in
#'list \code{objects}. Plot parameters not given in a list apply to all objects.
#'Plot parameters may also be grouped as \code{\link{simplist}}s, since \code{lplot}
#'internally calles \code{\link{splot}}.
#'
#'Any \code{add}-parameters only affect the first plotted object. Whether or not
#'the plots of the remaining objects are added to the first plot, is controlled
#'by parameter \code{allinone.}
#'
#'@export
#'@examples
#'# a list of plottable objects: functions
#'curves <- list(b = cos, a = sin)
#'lplot(curves, col = list(a = "green", b = "red"), ylim = c(-1, 1), to = pi)
#'# start a new plot for every object
#'lplot(curves, allinone = FALSE, col = list(a = "green", b = "red"),
#'      ylim = c(-1, 1), to = pi)
#'
#'# using plot styles
#'curves <- list(b = cos, a = sin)
#'mystyles <- list(a = simplist(col = "red", lwd = 2), b = simplist(col = "green"))
#'lplot(curves, mystyles, ylim = c(-1, 1), to = 2*pi)
#' @author Ute Hahn,  \email{ute@@imf.au.dk}


lplot <- function (objects=NULL, ..., allinone = TRUE, .plotmethod = "plot")
{
  stopifnot(is.list(objects))

  # check whether objects have plot methods
 # plottingclasses <- classesWithMethod(.plotmethod)
 # canplot <- function(obj) any(class(obj) %in% plottingclasses)
 # objects <- objects[sapply(objects, canplot)]

  nobjects <- length(objects)
  if (nobjects == 0) stop("nothing to plot here")
  unnamed <- is.null(obnames <- names(objects))
  if (unnamed) {
    obnames <- paste("obj", 1:nobjects, sep=".")
    names(objects) <- obnames
  }
  dotargs <- simplist(...)
  if(is.null(names(dotargs))) names(dotargs) <- rep("", length(dotargs))

  addfirst <- any(dotargs$add)
  #override add arguments: plot either all in one, or all separately
  dotargs$add <- NULL # plot all in one plot

  # get plot limits, at least for y in case this is necessary at all
  if (allinone && nobjects > 1 && !addfirst && is.null(dotargs$ylim)) {
    rangexyclasses <- classesWithMethod("rangexy")
    hasrange <- function(obj) any(class(obj) %in% rangexyclasses)
    ranges <- lapply (objects[sapply(objects, hasrange)], rangexy)
    if (!is.null(ranges) && (length(ranges) > 1)) {
      ranges <- ranges[!sapply(ranges, is.null)]
      xrange <- range(sapply(ranges, function(x) x$x))
      yrange <- range(sapply(ranges, function(x) x$y))
      dotargs$ylim  <- yrange
      if (is.null(dotargs$xlim))
        dotargs$xlim <- xrange
      }
  }
  orderedArgs <- retagList(dotargs, obnames)

  # ppppatch
  # don't let plot.ppp print a rubbish name as title

  if (("ppp" %in% class(objects[[1]])) && is.null(dotargs$main))
    orderedArgs[["..."]]$main <- ifelse(unnamed, "", obnames[1])

  do.call(splot, c(list(objects[[1]]), orderedArgs[[obnames[1]]],
                  orderedArgs[["..."]], add = addfirst,
                   .plotmethod = .plotmethod, recursive=F))

  if (nobjects > 1) for (i in 2 : nobjects)
     do.call(splot, c(list(objects[[i]]), orderedArgs[[i]],
       orderedArgs[["..."]], add = allinone, .plotmethod = .plotmethod))
}