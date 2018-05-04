GeneratePlot2 <- function(){
        Sys.setlocale("LC_TIME","English")
        # ReadData.R is also copied to github
        source("ReadData.R")
        EnergyConsumption <- ReadInData()

        DateVec <- strptime(paste(EnergyConsumption$Date, 
                                  EnergyConsumption$Time), "%d/%m/%Y %H:%M:%S")
        
        ActivePower <- EnergyConsumption$Global_active_power
        png("Plot2.png", , width = 480, height = 480)
        par(mar = c(3,4.1, 2,2))
        plot(DateVec, ActivePower, type= "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "")
        dev.off()
}