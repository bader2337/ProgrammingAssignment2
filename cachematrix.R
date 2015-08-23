## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
