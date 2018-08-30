## runDrivers.R ----------------------------------------------------------------

runDrivers <- function(vars, family){
        ## Expects response to be rightmost
        if (! family %in% c("binomial", "gaussian")){
                print ("Invalid family type")
                break
        }
        
        runOneDriver <- function(onePredictor){
                if (family == "gaussian"){
                        fit <- glm(scale(vars[, ncol(vars)]) ~ 
                                           scale(onePredictor), 
                                   family="gaussian")   
                } else if (family == "binomial"){
                        fit <- glm(vars[, ncol(vars)] ~ 
                                           scale(onePredictor), 
                                   family="binomial")   
                }
                toReturn <-c(summary(fit)$coef[2,1], 
                             summary(fit)$coef[2,4])
                toReturn <- data.frame(coeff=toReturn[1],
                                       pvalue=toReturn[2])
                toReturn$absCoeff <- abs(as.numeric(toReturn$coeff))
                toReturn
        }
        
        predictors <- vars[, 1:(ncol(vars)-1)]
        
        fits <- as.data.frame(do.call(rbind, 
                                      apply(predictors, 2, runOneDriver)))
        fits$Predictor <- colnames(predictors)
        fits$ImportanceScore <- abs(as.numeric(fits$coeff)) / 
                mean(abs(as.numeric(fits$coeff))) * 100
        fits
}
