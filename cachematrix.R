## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL #setting default value for inv matrix
                setmatrix <- function(x) {
                martix <<- x
                invMatrix <<- NULL
                }
        getmatrix <- function() matrix # get matrix function
        
        setinvMatrix <- function(inverseMatrix) invMatrix <<- inverseMatrix #set new function name

        getInvMatrix <- function() invMatrix
	
	list(setMatrix = setMatrix, getMatrix=getMatrix,
		 setInvMatrix = setInvMatrix,
		 getInvMatrix = getInvMatrix)
}


## Write a short comment describing this function
# The function returns inverse of matrix computed by makeCacheMatrix
cacheSolve <- function(x, ...) {
        #get invMatrix
        invMatrix <- matrix$getInvMatrix()

        #check if it is not null
        if (!is.null(invMatrix)){
        	message("getting cached data")
        	return (invMatrix)
        }

        #if it is not null, calculate the inverse
        data <- matrix$getMatrix()
        inv <- solve(data, ...)
        matrix$setInvMatrix(inv) #save it
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
