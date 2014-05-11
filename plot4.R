png("plot4.png")
par(mfrow = c(2, 2))
with(power.consumption, {
  # plot 1
  plot(DateTime, Global_active_power,
       type="l", ylab="Global Active Power (kilowatts)", xlab="")
  
  # plot 1
  plot(DateTime, Voltage,
       type="l", ylab="Voltage", xlab="datetime")
  
  # plot 3
  plot(DateTime, Sub_metering_1,
       type="l", ylab="Energy sub metering", xlab="")
  lines(DateTime, Sub_metering_2, type="l", col="red")
  lines(DateTime, Sub_metering_3, type="l", col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1, bty="n")
  
  # plot 4
  plot(DateTime, Global_reactive_power,
       type="l", xlab="datetime")
})
dev.off()