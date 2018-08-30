## getStubNames.R --------------------------------------------------------------
## Generates stub names to attach to a qLabel

getStubNames <- function(stubNums, numType){
        stubNames <- paste0(numType, stubNums)
        stubNames
}