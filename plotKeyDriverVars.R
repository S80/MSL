## plotKeyDriverVars.R

plotKeyDriverVars <- function(vars){
        ## Start
        invisible(readline(prompt="Displaying histograms. Press [enter] to continue."))

        ## Plot vars
        for (index in 1:ncol(vars)){
                print(colnames(vars)[index])
                print(sum(!is.na(vars[, index])))
                hist(vars[, index])
                invisible(readline(prompt="Press [enter] to continue"))
        }
        
        invisible(readline(prompt="Displaying corrs. Press [enter] to continue."))
        
        ## Plot pred vars vs. resp var
        for (index in 1:(ncol(vars) - 1)){
                newVars <- data.frame(pred = vars[, index],
                                         resp = vars[, ncol(vars)])
                freqs <- as.data.frame(table(newVars))
                print(colnames(vars)[index])
                print(cor(newVars$pred, newVars$resp, use="complete.obs"))
                g <- ggplot(freqs, aes(x=pred, y=resp)) + 
                               geom_tile(aes(fill=Freq))
                print(g)
                invisible(readline(prompt="Press [enter] to continue."))
        }
        
}
