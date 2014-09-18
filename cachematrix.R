## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function creates subfunctions that will be used afterwards
makeCacheMatrix <-function(x=matrix()) {
m<-NULL
set<-function(y){
      x<<-y
      m<<-NULL
}
get<-function() x
setinverse<-function(solve) m<<-solve
getinverse<-function() m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...){
m<-x$getinverse()
if(!is.null(m)) {
          message("buffering")
           return(m)
}
data<-x$get()
m<-solve(data,...)
x$setinverse(m)
m
}
        ## Return a matrix that is the inverse of 'x'
## Should look like cacheSolve(makeCacheMatrix(m(1:4,2,2))

