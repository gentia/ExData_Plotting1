## Converting the data into subset
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric","numeric","numeric", "numeric"))
data2 <- data[data$Date == "1/2/2007"| data$Date =="2/2/2007",]

#Cleaning up the date and the time variables 
colnames(data2) <- c("Date", "Time", "GlobalActivePower", "GlobalReactivePower", "Voltage", "GlobalIntensity", "SubMetering1", "SubMetering2", "SubMetering3")
data2$DT <- dmy(data2$Date) + hms(data2$Time)

#data$date <- as.Date(as.character(data$Date), "%d/%m/%y")



