## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    cm <- NULL
    set <- function(y) {
    x <<- y
    cm <<- NULL
  }
    get <- function() x
    setsolve <- function(solve) cm <<- solve
    getsolve <- function() cm
    list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    cm <- x$getsolve()
    if(!is.null(cm)) {
    message("getting cached data")
    return(cm)
  }
    data <- x$get()
    cm <- solve(data, ...)
    x$setsolve(cm)
    cm
}
