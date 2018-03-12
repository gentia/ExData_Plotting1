source("Power Consumption.R")

png(filename = "plot3.png", width = 480, height = 480, units = "px")

# connect line colors to data and plot 
plot(data2$DT,data2$SubMetering1,type = "l",xlab = " ", ylab = "Energy sub metering")
lines(data2$DT, data2$SubMetering2, col = "Red")
lines(data2$DT, data2$SubMetering3, col = "Blue")

# adding the legend
legend("topright",legend = c("SubMetering1", "SubMetering2", "SubMetering3"),col = c("Black", "Red", "Blue"),lty = "solid" )


dev.off()