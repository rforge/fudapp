instpa <- installed.packages()[,1]
if(!is.element("plyr", instpa)) {
  cat("\ngetting plyr...\n")
install.packages("plyr", repos = "http://cran.r-mirror.de")
}
#unloadNamespace(ns="plutils")
if(!is.element("plutils", instpa)) {
  cat("\ngetting plutils...\n")
  install.packages("plutils", repos = "http://R-Forge.R-project.org")
}

#unloadNamespace(ns="fdnonpar")
if(!is.element("fdnonpar", instpa)){
  cat("\ngetting fdnonpar...\n")
 install.packages("fdnonpar", repos = "http://R-Forge.R-project.org")
 }


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