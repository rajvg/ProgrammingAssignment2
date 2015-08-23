cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(is.matrix(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	if (class(try(solve(data, ...),silent=T))=="matrix") {
	        m <- solve(data, ...)
	        x$setinverse(m)
	        m
	}
	else {
	        message("matrix not invertible")
	}
}
