cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  # Retrieve the cached inverse
  
  # If the inverse is already cached, return it
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Otherwise, compute the inverse
  data <- x$get()  # Get the matrix
  inv <- solve(data, ...)  # Compute the inverse using solve()
  
  # Cache the inverse
  x$setInverse(inv)
  
  return(inv)
}
