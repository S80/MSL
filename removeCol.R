## removeCol.R -----------------------------------------------------------------
## Removes column(s) from the dataset

removeCol <- function(dataset, searchTerm){
        dataset <- dataset[, !grepl(searchTerm, colnames(dataset))]
        dataset
}

removeOE <- function(dataset){
        dataset <- removeCol(dataset, "oe")
        dataset
}

removeStraightline <- function(dataset){
        dataset <- removeCol(dataset, "straightline|Straightline")
        dataset
}

removeSL <- function(dataset){
        dataset <- removeCol(dataset, "sl|SL")
        dataset
}