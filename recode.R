## Recode ----------------------------------------------------------------------

codeBinary <- function(vars, qualVals){
        naVec <- is.na(vars[, ncol(vars)])
        vars[ , ncol(vars)] <- as.numeric(vars[ , ncol(vars)] %in% qualVals)
        vars[, ncol(vars)][naVec] <- NA
        vars
}

codeTopBox <- function(vars){
        
}

codeTopTwoBox <- function(vars){
        
}

codeBottomBox <- function(vars){
        
}

codeBottomTwoBox <- function(vars){
        
}