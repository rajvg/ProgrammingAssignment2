## This function creates a special "matrix" object that
## that can cache its inverse
makeCacheMatrix <- function(x = martrix()) {
	m <- NULL
	## set the matrix
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	## get the matrix
	get <- function() x
	## set the inverse
	setinverse <- function(inverse) m <<- inverse
	## get the inverse
	getinverse <- function() m
	## list of function
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)
}
