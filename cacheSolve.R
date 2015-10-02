## This function computes the inverse of the special "matrix"
## returned by the makeCacheMatrix function.
## If the inverse has already been calculated (and the matrix
## has not changed), then cacheSolve will retrieve the inverse
## from cache.
cacheSolve <- function(x, ...) {
        ## get inverse from cache
	m <- x$getinverse()
	## check if object is a matrix. 
	## if yes provide message and return matrix
	if(is.matrix(m)) {
		message("getting cached data")
		return(m)
	}
	## get matrix object
	data <- x$get()
	## check if matrix is invertible and if not provide message
        ## Inverse matrix
	if (class(try(solve(data, ...),silent=T))=="matrix") {
	        m <- solve(data, ...)
	        x$setinverse(m)
	        m
	}
	## provide message
	else {
	        message("matrix not invertible")
	}
}
