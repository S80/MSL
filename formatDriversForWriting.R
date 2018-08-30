## formatDriversForFile.R

formatDriversForWriting <- function(drivers, predLabels){
        ## Expect pred labels to contain qLabel then humanLabel
        ## Order: Variable	Stub	ImportanceScore	coeff	pvalue
        stubs <- predLabels[, 1][predLabels[, 2] %in% drivers$Predictor]
        fmtDrivers <- data.frame(Variable = drivers$Predictor,
                                 Stub = stubs,
                                 ImportanceScore = drivers$ImportanceScore,
                                 coeff = drivers$coeff,
                                 pvalue = drivers$pvalue)
        fmtDrivers
}
