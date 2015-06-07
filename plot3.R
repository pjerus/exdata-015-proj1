## Exploratory Data Analysis Class
## Project 1
## Author - Pat Jerus
## Class: exdata-015
## PLOT 3 code

## Read File
powdata <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?", header = TRUE)

## Select on the dates we want
powdata <- powdata[(powdata$Date=="1/2/2007" | powdata$Date=="2/2/2007"),]

## Fix Date Format
powdata$DateTime <- strptime(paste(powdata$Date, powdata$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

## Plot 3 PNG file call
#png(filename = "plot3.png", width = 480, height = 480)

## Create the line graph with 3 lines and formatting

plot(powdata$DateTime, powdata$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(powdata$DateTime, powdata$Sub_metering_2, col="red")
lines(powdata$DateTime, powdata$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

## close the device
#dev.off()
