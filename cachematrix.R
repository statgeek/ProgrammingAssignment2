## cacheMatrix.R - Fareeza Khurshed
## April 26, 2014
## Peer Assignment - Coursera R Programming


## Make a matrix object

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse
  )
}



## Returns the inverse of a matrix:
## Checks if the inverse of the matrix already exists and
## returns the cached value, if it exists
## If the inverse of the matrix is not already cached
## calculate the inverse, store it with the matrix
## and return the inverse. 

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
  
}

