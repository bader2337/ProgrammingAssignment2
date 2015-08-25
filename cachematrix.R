## makeCacheMatrix stores the four following functions.

## set(): changes the originally input matrix to a new one
## get(): returns the matrix that was input
## setInverse(): sets the inverse of the input matrix
## getInverse(): retrieves the cached inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    mtrx = NULL
    set  = function(y) {
        x <<- y
        mtrx <<- NULL
    }
    get = function() x
    setInverse = function(solve) mtrx <<- solve
    getInverse = function() mtrx
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function checks to see if a matrix created in 
## makeCacheMatrix has already been solved, and if it
## hasn't it solves and returns it.

cacheSolve <- function(x, ...) {
    mtrx = x$getInverse()
    if(!is.null(mtrx)) {
        return(m)
    }
    data = x$get()
    mtrx = solve(data, ...)
    x$setInverse(mtrx)
    mtrx
    
}
