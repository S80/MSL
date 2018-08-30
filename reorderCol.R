## reorderCol.R

reorderCol <- function(variables, keyVar){
        if (colnames(variables)[ncol(variables)] != keyVar){
                colNeeded <- which(colnames(variables) == keyVar)
                keyVec <- variables[, colNeeded]
                variables[, colNeeded] <- NULL
                variables <- cbind(variables, keyVec)
                colnames(variables)[ncol(variables)] <- keyVar
        }
        variables
}
