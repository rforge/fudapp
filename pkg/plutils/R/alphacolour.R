# lighten up a colour -----------------------------------------------------

#'@title Generate color of a given brightness / opacity
#'@description Create colors with a given transparency value, or mimick transparency
#'by mixing with the background colour.
#' @param col a valid color specification
#' @param alpha numeric, alpha level, between 0 and 1.
#' @param alphamix logical, if \code{TRUE}, return rgb-alpha colour, see Details.
#' Defaults to the value stored in the package options.
#' @return a colour in RGB format. If alpha < 1, the colour is lighter than the input
#' colour, see the details.
#'@details
#' \code{alphacol} follows the concept of alpha compositing:\cr
#' A number \eqn{\alpha} between 0 and 1 controls how opaque the colour is. 
#' When printing a colour A with alpha-level \eqn{\alpha} over a colour B, 
#' the result  becomes \eqn{\alpha}A + (1-\eqn{\alpha})B. 
#' Thus, \code{alpha = 1} equals to a colour that overplots other colours, and for 
#' \code{alpha = 0}, the colour is invisible.
#' 
#' \code{R} allows to define RGB colours with true alpha transparency, however, not 
#' all devices support that. Therefore, the default behaviour of \code{alphacol} 
#' is to mix the input colour A with the background colour found by \code{par("bg")}. 
#' A colour with \code{alpha < 1} thus actually also prints opaque. 
#' If you want to change this behaviour once, let \code{alphamix = TRUE}. 
#' To change it globally, call \code{ploptions(alphamix = TRUE)}
#' @seealso \code{\link{ploptions}} for setting package options.
#'@author Ute Hahn,  \email{ute@@imf.au.dk}
#' @keywords internal
#' @export
#'@examples
#'alphacol("red", alpha = .5, alphamixing = FALSE)
#'alphacol("red", alpha = .5, alphamixing = TRUE)
#'ploptions(alphamix = FALSE)
#'alphacol("red", alpha = .5)

alphacol <- function(col = par("col"), alpha = 1, alphamixing = NULL) {
  if (is.null(alphamixing)) 
    alphamixing <- ploptions("alphamix")$alphamix
  # add alpha to a colour
  if (is.null(alpha)) 
    alpha <- 1
  if (alphamixing) 
    return(rgb(t(col2rgb(col)/255), alpha=alpha))
  bg.RGB <- col2rgb(par("bg"))
  RGB <- pmin((alpha * col2rgb(col) + (1 - alpha) * bg.RGB) / 255, 1) 
    # pmin just to be on the safe side
  rgb(RGB["red", ], RGB["green", ], RGB["blue", ])
}  

