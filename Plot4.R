GeneratePlot4 <- function(){
        Sys.setlocale("LC_TIME","English")
        source("ReadData.R")
        EnergyConsumption <- ReadInData()
        
        DateVec <- strptime(paste(EnergyConsumption$Date, 
                                  EnergyConsumption$Time), "%d/%m/%Y %H:%M:%S")
        
        png("Plot4.png")
        par(mar = c(5.1,4.1, 2,2), mfrow = c(2,2))
        
        #plot1
        plot(DateVec, EnergyConsumption$Global_active_power, type = "l", 
             ylab = "Global Active Power", xlab = "")
        
        #plot2
        plot(DateVec, EnergyConsumption$Voltage, type = "l", 
             ylab = "Voltage", xlab = "datetime")
        
        #plot3
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
        
        #plot4
        plot(DateVec, EnergyConsumption$Global_reactive_power, type = "l",
             ylab = "Global Reactive Power", xlab = "datetime")
        
        dev.off()
}