ReadInData <- function(){
        EnergyConsumption <- read.table("household_power_consumption.txt",
                header = FALSE, sep = ";", na.strings = "?", skip = 66637, 
                nrows = 2880, colClasses = c("character", "character",
                "numeric", "numeric", "numeric", "numeric", "numeric",
                "numeric", "numeric"))     
        
        nameHelp <- read.csv("household_power_consumption.txt", sep = ";",
                             nrows = 1)
        
        names(EnergyConsumption) <- names(nameHelp)
        
        rm(nameHelp)
        
        EnergyConsumption
}