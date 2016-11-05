## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
               m<-NULL
               set<-function(y)  ##function for setting the value of matrix in x
               {
                  x<-y
                  m<-NULL        ##it is set to null wether there was any previous value or not
                 
               }
               get<-function()x  ##for retreiving value of matrix
               setInverse<-function(inverse) m<<-inverse  ## for setting value of inverse
               getInverse<-function() m   ## for retrieving value of inverse
               
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
               m<-x$getInverse()
               if(!is.null(m))  ## to check whether it was previously set or not
               {
                 message("getting cached data")
                 return(m)
               }
               data<-x$get();  ##to fetch matrix
               m<-solve(data,...);
               x$setInverse(m);
               m
         ## Return a matrix that is the inverse of 'x'
}
