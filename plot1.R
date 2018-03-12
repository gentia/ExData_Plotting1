source("Power Consumption.R")

png(filename = "plot1.png", width = 480, height = 480, units = "px")

plot1 <- hist(data2$GlobalActivePower) 
plot(plot1, main = "Global Active Power ", xlab = "Global Active Power(kilowatts)", ylab = "Frequency", col = "Red")

dev.off()

