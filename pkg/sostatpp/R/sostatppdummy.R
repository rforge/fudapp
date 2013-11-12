#unloadNamespace(ns="fdnonpar")
install.packages("fdnonpar", repos = "http://R-Forge.R-project.org")
#unloadNamespace(ns="plutils")
install.packages("plutils", repos = "http://R-Forge.R-project.org")

#'@title Hello world
#'@description Say hello to everybody!
#'@param message What you have to say, if anything
#'@export helloworld
#'@examples
#'helloworld("don't give up!")
#
helloworld <- function(message = "dunno (???)")
{
   cat("Message of the day:", message,"\n--- that was basically it!")
}