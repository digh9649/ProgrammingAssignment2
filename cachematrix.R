## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i_matrix <- NULL
  set <- function(matrix){
    x <<- matrix
    i_matrix <<- NULL
  }
  get <- function() x
  
  setinverse <- function(inverse) i_matrix <<- solve
  
  getinverse <- function() i_matrix
  
  list(set=set, get=get, setinverse=setinverse, getinverse,getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i_matrix <- x$getInverse()
  if(!is.null(i_matrix)){
    message("getting cached data")
    i_matrix
  }
  data <- x$get()
  i_matrix <- solve(data) %*% data
  x$setinverse
}
