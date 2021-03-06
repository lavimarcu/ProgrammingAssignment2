## The functions in this file are ment to create a matrix, store it to R cache, calculate its inverse and store it
## in cache and retrive the inverse from cache. 


## This function creates the special matrix. 

makeCacheMatrix <- function(x=matrix()){
        pinverse <<- NULL                      # set value of the inverse to NULL and place it in cache
	
	set <- function(x,y,z){                
               p <<- matrix(x,nrow=y,ncol=y)   # create cache matrix using the user's arguments
               pinverse <<- NULL               # assign NULL cache value to the inverse
	}
	
	set_inverse <- function() {            
		pinverse <<- solve(p)          #calculate inverse and store it in cache
		pinverse                 
                } 

    get <- function() p	                       # get value of matrix
    get_inverse <- function() pinverse	       # get value of the inverse

list(set=set,set_inverse=set_inverse,get=get,get_inverse=get_inverse)
}

## This function retrives the cache value for the inverse if already calculated. If the inverse does not exists
## it calculates it.

cacheSolve <- function(x, ...) {
        c <- x$get()                           # get the value of the matrix created with the previous function
        c_inv <- x$get_inverse()               # get the value of the inverse matrix
         
        if (identical(c,p) & !is.null(c_inv))  # checks if matrixes are identical AND IF value of inverse is NULL
        {
        	message("getting cached data!!") 
        	pinverse                       # prints cached inverse
        } else  {
        	showinverse <- solve(c)        # calculates the inverse
        	showinverse                    # returns the inverse
                }
        
}
