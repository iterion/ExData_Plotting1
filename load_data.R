headers <- read.csv("~/Development/ExData_Plotting1/data/household_power_consumption.txt", sep=";", nrows=1, header=F, stringsAsFactor=F)
power.consumption <- read.csv("~/Development/ExData_Plotting1/data/household_power_consumption.txt", sep=";", skip=66637, nrows=2880, header=F)
names(power.consumption) <- as.character(headers[1,])

date.times <- paste(power.consumption$Date, power.consumption$Time, sep = " ")
date.times <- strptime(date.times, format="%d/%m/%Y %H:%M:%S")
power.consumption$DateTime <- date.times
