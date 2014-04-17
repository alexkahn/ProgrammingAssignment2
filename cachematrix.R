## Construct a matrix object whose inverse needs to be computed but not 
## if the inverse has been computed previously, i.e. the inverse will be
## cached in memory. There are two functions:
##    1. makeCacheMatrix - creates a matrix object whose inverse is to be
##       cached.
##    2. cacheSolve - conditionally solves a matrix based on whether or not
##       the matrix's inverse was computed previously.

# Function makeCacheMatrix
# Arguments: x - an object of type matrix, ideally it is a square, invertible
# matrix. That is, there exists some matrix B such that Bx = I where I is the
# identity matrix.

makeCacheMatrix <- function(x = matrix()) {
  X_inv <- NULL
  set <- function(A) {
    x <<- A
    X_inv <<- NULL
  }
  get <- function() x
  set_inv <- function(inverse) X_inv <<- inverse
  get_inv <- function() X_inv
  list(set = set, get = get,
       set_inv = set_inv,
       get_inv = get_inv)
}


# Function cacheSolve
# Arguments: x - an object created by makeCacheMatrix
#            ... - additional arguments to be passed to
#            solve(). Enter ?solve for more info.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  X_inv <- x$get_inv()
  if(!is.null(X_inv)) {
    message("getting cached data")
    return(X_inv)
  }
  data <- x$get()
  X_inv <- solve(data, ...)
  x$set_inv(X_inv)
  X_inv
}
