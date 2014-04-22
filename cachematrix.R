## The first function creates a matrix that is stored in R cache.  
## The second function gets the value of the matrix, checks if it similar with the cached matrix and checks if the inverse
##has been calculated. If the matrixes are similar and the inverse is already calculated, it retrives the inverse
##from cahce. Otherwise, it calculates and displays the inverse. 

## This function takes an user matrix argument; sets its value; gets the value; sets its inverse; gets the inverse.

makeCacheMatrix <- function(x=matrix()){
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(solve) inv <<- solve
	getinv <- function() inv
	list(set=set,get=get,setinv=setinv,getinv=getinv)
}

## This function takes a matrix argument; checks if the matrix is similar with the one created with previous function; 
##if similar and the inverse is already calculated, it prints the inverse from cache. Otherwise, it computes and prints
## the inverse. 

cachesolve <- function(x, ...) {
        p <- x$get()
        inv <- x$getinv()
        if(identical(x,p) & !is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        matrix <- x$get()
        inv <- solve(matrix, ...)
        x$setinv(inv)
        inv
}
