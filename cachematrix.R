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

}


# Function cacheSolve
# Arguments: x - an object created by makeCacheMatrix
#            ... - additional arguments to be passed to
#     [Insert the functions used along with ref to their usage]

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
