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




#'@title Hallo Welt
#'@description Say hello and install my package, please
#'@param pkg package wanted
#'@param repo where to get it
#'@export
#'@examples
#'HalloWelt("plyr", "http://cran.r-mirror.de")
#'HalloWelt("plutils", "http://R-Forge.R-project.org")
#'HalloWelt("fdnonpar", "http://R-Forge.R-project.org")

HalloWelt <- function(pkg = "plyr", repo = "http://cran.r-mirror.de") {
   IP <- installed.packages() 
   instpa <- IP[,1]
   if(!is.element(pkg, instpa)) {
        cat("\ngetting", pkg,"... \n")
        install.packages(pkg, repos = repo)
        cat("Finally,",pkg,"is installed, version:",installed.packages()[pkg,"Version"],"\n")
    } else {
        cat("Yeps,",pkg,"is installed, version:",IP[pkg,"Version"],"\n")
      }  
}


#'@title Hello world
#'@description Say hello to everybody!
#'@param message What you have to say, if anything
#'@export helloworld
#'@examples
#'helloworld("don't give up!")

helloworld <- function(message = "dunno (???)")
{
   cat("Message of the day:", message,"\n--- that was basically it.\n")
}

helloworld("Installomatic ?")
HalloWelt("plyr", "http://cran.r-mirror.de")
HalloWelt("plutils", "http://R-Forge.R-project.org")
HalloWelt("fdnonpar", "http://R-Forge.R-project.org")
helloworld("EOF")
