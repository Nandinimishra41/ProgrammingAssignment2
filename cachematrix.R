makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize cached inverse to NULL

  # Set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Clear the cached inverse if matrix is updated
  }

  # Get the matrix
  get <- function() x

  # Set the inverse of the matrix
  setInverse <- function(inverse) inv <<- inverse

  # Get the cached inverse
  getInverse <- function() inv

  # Return a list of functions that provide access to the matrix and its inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

