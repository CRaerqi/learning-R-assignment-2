## Put comments here that give an overall description of what your
## functions do

## this function creats a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix(),...) {
  
  m <- NULL
  set<-function(y){
    x <<- y
    m <<- NULL
  }
get<- function () x
setM <- funvtion(solve) m <<- solve
getM <- function () m
list(set=set,get=get,setM=setM,getM=getM)
  
}


## computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
  
  
  m <- x$getM()
  if(!is.null(m)){
    message("T0 cached date")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setM(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
