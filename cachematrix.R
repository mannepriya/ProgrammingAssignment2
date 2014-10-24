## The first functions make CacheMatrix creates a list of functions that does 
# 1 gets the inverse of  a matrix
# 2 Sets the inverse of  a matrix to a given matrix
# 3 gets teh value of the matrix
# 4 Sets the value of the matrix
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  getinverse<-function() {
    i
  }
  get<-function() {
    x
  }
  setinverse<-function (y){
    i<<-y
  }
  set<-function(z){
    x<<-z
    i<<-NULL
    
  }
  list(getinverse=getinverse,setinverse=setinverse,get=get,set=set)
  # returns the list of functions
}


## 2nd function cacheSolve calculates the inverse of the matrix created from 
#above function, howeverto save time it checks for the mean in the cache 
#first before calculating the same 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  if(!is.null(i)){
    print("getting data from cache")
    return(i)
  }
  k<-x$get()
  i<-solve(k)
  x$setinverse(i)
  
  return(i)
}
