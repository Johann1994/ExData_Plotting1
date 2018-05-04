GeneratePlot1 <- function(){
        # ReadData.R is also copied to github
        source("ReadData.R")
        EnergyConsumption <- ReadInData()
        
        ActivePower <- EnergyConsumption$Global_active_power
        
        png("Plot1.png", width = 480, height = 480)
        hist(ActivePower, col = "red", main = "Global Active Power", 
             xlab = "Global Active Power (kilowatts)")
        dev.off()
}