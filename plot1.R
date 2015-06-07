## Exploratory Data Analysis Class
## Project 1
## Author - Pat Jerus
## Class: exdata-015
## PLOT 1 code


## Read File
powdata <- read.table("household_power_consumption.txt",sep = ";", na.strings = "?", header = TRUE)
## Fix Date Format
powdata$Date <- as.Date(powdata$Date, "%d/%m/%Y")

## Select on the dates we want
selectpow <- filter(powdata, powdata$Date == "2007-02-02"|powdata$Date == "2007-02-01")

## Plot 1 PNG file call
png(filename = "plot1.png", width = 480, height = 480)

## Create the histogram and formatting
hist(selectpow$Global_active_power, col ="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

## close the device
dev.off()
