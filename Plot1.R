GeneratePlot1 <- function(){
        source("ReadData.R")
        EnergyConsumption <- ReadInData()
        
        ActivePower <- EnergyConsumption$Global_active_power
        
        png("Plot1.png")
        hist(ActivePower, col = "red", main = "Global Active Power", 
             xlab = "Global Active Power (kilowatts)")
        dev.off()
}