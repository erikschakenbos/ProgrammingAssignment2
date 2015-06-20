
#===========================================
#Autor:     Erik Schakenbos
#Date:      2015-06-20
#Description:
#Script contains 2 functions which are able
#to interact. 
#
#makeCachMatrix stores input and
#inverted matrix to environment objects.
#
#cacheSolve compares input matrix with stored
#environment matrix. If different, call makeCacheMatrix
#if the same, return stored env object of invert
#===========================================

#===========================================
#makeCacheMatrix:
#Store original matrix for identical compare 
#Store invert
#===========================================
makeCacheMatrix <- function(x = matrix()) 
    {
        orgM <<- x
        invM <<- solve(x)
    }


#===========================================
#cacheSolve:
#Checks if input matrix is identical with one env.
#If yes, then get cached invert form env
#If no, then call makeCacheMatrix
#===========================================
cacheSolve <- function(x, ...) 
    {
        if(identical(x, orgM))    
            {
                #If x and orgM are identical, then output is invM
                message("input = cached org M, retrieving invM")
                return(invM)
            }
        makeCacheMatrix(x)
        return(invM)
    }
