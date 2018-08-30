## getVarNames.R ---------------------------------------------------------------
## Gets full qLabel + stubName titles i.e. column names for variables

getVarNames <- function(stubNames, prefix){
        ## In cases of qLabel_rxry, qLabelsrxcy, qLabel_rxrycz, etc.
        ## You can repeat use of this function using a vector of row or
        ## col stubNames with other row or col stubNames, and then
        ## in the last iteration use a question label with stubNames returned
        ## by previous getColNames() uses.
        varNames <- paste0(prefix, stubNames)
        varNames
}