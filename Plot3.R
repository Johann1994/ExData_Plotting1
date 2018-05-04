GeneratePlot3 <- function() {
        Sys.setlocale("LC_TIME","English")
        # ReadData.R is also copied to github
        source("ReadData.R")
        EnergyConsumption <- ReadInData()
        
        DateVec <- strptime(paste(EnergyConsumption$Date, 
                                  EnergyConsumption$Time), "%d/%m/%Y %H:%M:%S")
        

        png("Plot3.png", , width = 480, height = 480)
        par(mar = c(3,4.1, 2,2))
        
        with(EnergyConsumption, plot(DateVec, Sub_metering_1, type = "n",
                                     xlab = "", ylab = "Energy Sub Metering"))
        lines(DateVec, EnergyConsumption$Sub_metering_1, type = "l",
              col = "black")
        
        lines(DateVec, EnergyConsumption$Sub_metering_2, type = "l",
              col = "red")
        
        lines(DateVec, EnergyConsumption$Sub_metering_3, type = "l",
              col = "blue")
        
        legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                                      "Sub_metering_3"),
               lty = c(1,1, 1), lwd = c(2,2,2), col = c("black", "blue", "red"))
        
        dev.off()
}