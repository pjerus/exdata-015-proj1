## Exploratory Data Analysis Class
## Project 1
## Author - Pat Jerus
## Class: exdata-015
## PLOT 2 code

## Read File
powdata <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?", header = TRUE)

## Select on the dates we want
powdata <- powdata[(powdata$Date=="1/2/2007" | powdata$Date=="2/2/2007"),]

## Fix Date Format
powdata$DateTime <- strptime(paste(powdata$Date, powdata$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

## Plot 2 PNG file call
png(filename = "plot2.png", width = 480, height = 480)

## Create the line graph and formatting
plot(powdata$DateTime, powdata$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

## close the device
dev.off()
