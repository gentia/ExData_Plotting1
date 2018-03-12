source("Power Consumption.R")

png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

#Top Left Graph
plot(data2$DT, data2$GlobalActivePower, ylab = "Global Active Power", xlab = " ", type = "l")

#Top Right Graph
plot(data2$DT,data2$Voltage, ylab = "Voltage", xlab = "datetime", type = "l")

#Bottom Left Graph
plot(data2$DT,data2$SubMetering1,type = "l",xlab = " ", ylab = "Energy sub metering")
lines(data2$DT, data2$SubMetering2, col = "Red")
lines(data2$DT, data2$SubMetering3, col = "Blue")
legend("topright",legend = c("SubMetering1", "SubMetering2", "SubMetering3"),col = c("Black", "Red", "Blue"),lty = "solid" )

#Bottom Right Graph
plot(data2$DT, data2$GlobalReactivePower, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()
   
    
    
