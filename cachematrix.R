## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#create a matriz especial 
#crear una funcion especial que cree una matriz y defina una variable para
#guardar en cache su valor invertido 
makeCacheMatrix <- function(matriz = matrix()){
  #inicializacion de variables
  inver <- NULL
  set <- function(y){
    matriz <<-y
    inver <<- NULL
    
  }
  get <- function() matriz
  setsolve <- function(solve) inver <<- solve
  getsolve <- function() matriz
  list(set = set ,get = get, 
       getsolve = getsolve,
       setsolve = setsolve)
}

#verificacion de cache en una funcion
cacheSolve <- function(matriz, ...){
  inver <- matriz$getsolve()
  if(!is.null(inver)){
    message("getting inversed matrix")
    return( inver)
  }
  data <- matriz$get()
  inver <- solve(data, ...)
  matriz$setsolve(inver)
  inver
}

