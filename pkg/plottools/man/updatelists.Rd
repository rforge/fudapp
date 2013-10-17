\name{Functions for updating parameter lists}
\alias{Functions for updating parameter lists}
\alias{updateJoin}
\alias{updateList}
\alias{updateMissing}
\alias{updateNULLs}
\title{Update lists of parameters}
\usage{
  updateList(input, update, ignoreNULLs = TRUE)

  updateNULLs(input, update, ignoreNULLs = TRUE)

  updateMissing(input, update, ignoreNULLs = TRUE)

  updateJoin(input, update, ignoreNULLs = FALSE)
}
\arguments{
  \item{input}{list of input parameters to be updated}

  \item{update}{list of updates}

  \item{ignoreNULLs}{logical, if \code{TRUE} ignore
  \code{NULL} values in list \code{update}}
}
\value{
  A list with updated values, see the Details
}
\description{
  Joining or updating lists of parameters.
}
\details{
  \code{updateList} replaces values of any elements in
  \code{input} that also are contained in \code{update}
  with new values from \code{update}.

  \code{updateNULLs} works like \code{updatelist}, however
  only \code{NULL} values are replaced, other values remain
  untouched. The value of \code{ignoreNULLs} does not
  really matter here.

  \code{updateMissing} complements the list \code{input} by
  elements in \code{update}, but does not change existing
  values in \code{input}, even if they are \code{NULL}s.

  \code{updateJoin} returns a merged list of \code{input}
  and \code{update}, with priority of non-\code{NULL}
  values contained in \code{update}.  The result of
  \code{updatejoin(A, B)} is almost the same as
  \code{updateMissing(B, A)}, up to not forcing to preserve
  \code{NULL} values in \code{B}. By default,
  \code{ignoreNULLs} is set to \code{FALSE} here, thus the
  result also contains \code{NULL} elements from
  \code{update}, if no element with same name was present
  in \code{input}.
}
\examples{
A <- list(a = NULL, b = "b from A", c = "c from A", d = "d from A")
B <- list(a = "a from B", b = "b from B", c =  NULL,
         e = "e from B", f = NULL)

str(updateList(A, B))
# sequence does not matter:
str(updateList(A[c(3, 2, 1)], B))
# forcing new NULL values
str(updateList(A, B, ignoreNULLs = FALSE))

str(updateNULLs(A, B))

str(updateMissing(A, B))
str(updateMissing(A, B, ignoreNULLs = FALSE))

str(updateJoin(A, B))
str(updateJoin(A, B, ignoreNULLs = TRUE))
# this can be used to remove NULL values from a list:
str(updateJoin(A, NULL, ignoreNULLs = TRUE))
}
\author{
  Ute Hahn, \email{ute@imf.au.dk}
}

