## Programming assignment 2 - Coursera
## The idea is to create a function that takes advantage of lexical
## Scoping, Create matrix and find its inverse

## First part of the function verifies if the value of the inverse is known
## So that saves time on the computing. setting and getting those values

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set<- function(y){
        x <<- y
        i <<- NULL
}
get <- function() x
setinv <- function(solve) i <<- solve
getinv <- function() i
list(set = set, get = get, setinv = setinv,
     getinv = getinv)
}


## This function is the one that takes care of the calculation part in case 
## The value didn't exist before. If it did exist, then it'll only desplay it
##using the return function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i <- x$getinv()
if(!is.null(i)) {
        message("getting cached data")
return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(m)
        m
                }
