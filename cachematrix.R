## The first function creates a matrix by taking 3 arguments - x as the actual content of the matrix,y as the number
##of rows and z as the number of columns. 
## The second function takes an argument variable that is specified by the user - that should be a matrix.
##Next, the function searches in cache the matrix created by makeCacheMatrix function. If the matrix
##is found in memory and if the variable that was input by user is a matrix that is similar with the cached one
##and if the inverse of the cached matrix is not null, the function takes the inverse matrix from cache and 
##displays it. Alternative, it computes and prints the inverse of the matrix. 

## This function takes three arguments from the user and 1) creates the matrix and assigns it to variable "m"
## 2) calculates m's inverse by using "solve" function. 

##makeCacheMatrix <- function(x = matrix()) {

makeCacheMatrix <- function(x,y,z) {
        m <<- matrix(x,nrow=y,ncol=z)
        #m_inv <<- matrix()
        m_inv <<- solve(m)
}


## Write a short comment describing this function

##cacheSolve <- function(x, ...) {
## This function computes the inverse of the matrix constructed by previous function if it cannot find the inverse
##in memory(cache).

cacheSolve <- function(x) {
                     new <- get("m",inherits=TRUE)
         
         if (identical(new,x) & !is.na(m_inv)){
         	print("getting cached data")
         	#return(m_inv)
         }     else {
         	m_inv <- solve(m)
         }
         m_inv
}
