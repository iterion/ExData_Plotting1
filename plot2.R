png("figure/plot2.png")
with(power.consumption,
     plot(DateTime, Global_active_power,
          type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()