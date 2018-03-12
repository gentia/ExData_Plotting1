source("Power Consumption.R")

png(filename = "plot2.png", width = 480, height = 480, units = "px")

plot(data2$DT, data2$GlobalActivePower, ylab = "Global Active Power (kilowatts)",xlab = " ",type = "l")

dev.off()