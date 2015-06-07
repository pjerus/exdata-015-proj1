## Exploratory Data Analysis Class
## Project 1
## Author - Pat Jerus
## Class: exdata-015
## PLOT 4 code

## Read File
powdata <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?", header = TRUE)

## Select on the dates we want
powdata <- powdata[(powdata$Date=="1/2/2007" | powdata$Date=="2/2/2007"),]

## Fix Date Format
powdata$DateTime <- strptime(paste(powdata$Date, powdata$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

## Plot 4 PNG file call
png(filename = "plot4.png", width = 480, height = 480)

## Create the 2 by 2 grid of line graphs and formatting
par(mfrow=c(2, 2))
plot(powdata$DateTime, powdata$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power")
plot(powdata$DateTime, powdata$Voltage, type="l", 
     xlab="datetime", ylab="Voltage")
plot(powdata$DateTime, powdata$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(powdata$DateTime, powdata$Sub_metering_2, col="red")
lines(powdata$DateTime, powdata$Sub_metering_3, col="blue")
legend("topright", bty="n", lty=1, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(powdata$DateTime, powdata$Global_reactive_power, type="l", 
     xlab="datetime", ylab="Global_reactive_Power")

## close the device
dev.off()
