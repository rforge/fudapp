#unloadNamespace(ns="fdnonpar")
install.packages("fdnonpar", repos = "http://R-Forge.R-project.org")
#unloadNamespace(ns="plutils")
install.packages("plutils", repos = "http://R-Forge.R-project.org")


#'@title Hello world
#'@description Say hello to everybody!
#'@param message What you have to say, if anything
#'@export helloworld
#'@examples
#'installed.packages()->IP
#'helloworld("don't give up!")
#'helloworld(IP["plutils","Version"])
#'helloworld(IP["fdnonpar","Version"])

helloworld <- function(message = "dunno (???)")
{
   cat("Message of the day:", message,"\n--- that was basically it!\n")
}

installed.packages()->IP
helloworld(paste("plutils:", IP["plutils","Version"]))
helloworld(paste("fdnonpar:", IP["fdnonpar","Version"]))