#'@title Predefined lists
#'@rdname plottools-predefined
#'@name Predefined parameter lists and options
#'@description Predefined lists of parameters, for convenience
#'@details 
#'\tabular{ll}{ 
#' \code{.plotparams} \tab parameters that are used by \code{\link{plot.default}}, and that may
#' \cr\tab cause warnings in low level plotting functions, but not in \code{\link{plot.default}}
#' \cr\code{.graphparams} \tab graphical parameters that can be set by \code{\link{par}},
#' \cr\tab no risk when passed to low level plotting functions.
#' \cr\code{.plotoptions} \tab options for the behaviour of functions in the 
#' \code{plottools} package. 
#'}
#'@format named lists
NA

#'@rdname plottools-predefined
#'@export
.plotparams <- list(type = "p",  xlim = NULL, ylim = NULL,
                    log = "", main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
                    ann = par("ann"), axes = TRUE, frame.plot = TRUE,
                    panel.first = NULL, panel.last = NULL, asp = NA,
                    mgp = par("mgp"), add = FALSE)

#'@rdname plottools-predefined
#'@export
.graphparams <- par(no.readonly = TRUE)


#'@rdname plottools-predefined
#'@export
#'@format named lists
#'
.plotoptions <- list(alphamixing = FALSE)