instpa <- installed.packages()[,1]
if(!is.element("plyr", instpa)) install.packages("plyr")
#unloadNamespace(ns="fdnonpar")
if(!is.element("fdnonpar", instpa)) install.packages("fdnonpar", repos = "http://R-Forge.R-project.org")
#unloadNamespace(ns="plutils")
if(!is.element("plutils", instpa)) install.packages("plutils", repos = "http://R-Forge.R-project.org")


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