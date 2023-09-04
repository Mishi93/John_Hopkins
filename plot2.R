req_data$datetime <- strptime(paste(req_data$Date, req_data$Time), "%Y-%m-%d %H:%M:%S", tz="UTC")
with(req_data, plot(datetime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = ""))
