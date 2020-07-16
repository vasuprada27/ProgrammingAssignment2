## The functions 
# 1.create a  special matrix
# 2.and calculate the inverse of the matrix

## This function creates a special "matrix"

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inverse
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## This function computes the inverse of the special matrix.

cacheSolve <- function(x, ...) {
        inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- inv(data, ...)
  x$setinv(inverse)
  inverse
}
