par(mfrow=c(2,2))
par(mar=c(2,5,1,2))
req_data$datetime <- strptime(paste(req_data$Date, req_data$Time), "%Y-%m-%d %H:%M:%S", tz="UTC")
with(req_data, plot(datetime, Global_active_power, type="l", ylab = "Global Active Power", xlab = ""))
with(req_data, plot(datetime, Voltage, type="l"))
with(req_data, plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(req_data, lines(datetime, Sub_metering_2, col="red"))
with(req_data, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
with(req_data, plot(datetime, Global_reactive_power, type="l"))