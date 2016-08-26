##this file creates a the cache of the matrix
##designated by the function
makeCachematrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve,  getsolve = getsolve)
}
##this second function solves thematrix for the inverse
cachesolve<- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(mat.data, ...)
  x$setsolve(solve)
  return(m)
}
