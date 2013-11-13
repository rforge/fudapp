\name{helloworld}
\alias{helloworld}
\title{Hello world}
\usage{
  helloworld(message = "dunno (???)")
}
\arguments{
  \item{message}{What you have to say, if anything}
}
\description{
  Say hello to everybody!
}
\examples{
installed.packages()->IP
helloworld("don't give up!")
helloworld(IP["plutils","Version"])
helloworld(IP["fdnonpar","Version"])
}

