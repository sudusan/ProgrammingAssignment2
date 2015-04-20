## the makeCacheMatrix function creates a list of 4 functions to
# get - get the value of the matrix
# set - set the value of the matrix
# getInverse - get the inverse of the matrix
# setInverse - set the inverse of the matrix
makeCacheMatrix = function(x = numeric()) {
# the inverse of the matrix x is stored in the cache variable inv
inv = NULL
set = function(y) {
	x = y
	inv = NULL
}
get = function() x
# set the inverse value in the cache
setInverse = function(inverse) inv = inverse
# return the cached value
getInverse = function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## the cacheSolve function returns the inverse of the matrix x. It first returns the value in the cache. if cache is null, it calculates the inverse of x using the solve function and stores this value in the cache.
cacheSolve = function(x, ...) {
# get the vaue from cache
inv = x$getInverse()
# if the cache value is not null, then return this value
if(!is.null(inv) {
	message("getting cached data")
	return(inv)
}
data = x$get()
# calculate the matrix inverse
inv = solve(data, ...)
# set the inverse in the cache
x$setInverse(inv)
inv
}
