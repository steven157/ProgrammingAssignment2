## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  I<-NULL
  set <- function(n){
    m <<- n           # set the value of the matrix
    I <<- NULL
  }
  get <- function(){
    m                 # get the value of the matrix
  }
  setInverse <- function(inverse){
    I <<- inverse     # set the value of the inverse
  }
  getInverse <- function(){
    I                 # get the value of the inverse
  }
}


## Write a short comment describing this function

cacheSolve <- function(m) {
  
        ## Return a matrix that is the inverse of 'x'
  
  I <- m$getInverse()      # Attempt to check cache
  if(!is.null(I) && identical(solve(m),I)) {
    message("getting cached data")
    return(I)              # Return Inverse from cache if exists
  }
  data <- m$get()          
  I <- solve(data)         # Compute Inverse if no cache data
  m$setInverse(I)
  I
}
