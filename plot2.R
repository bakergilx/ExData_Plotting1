power = read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
power$DateTime = strptime(paste(power[,1], power[,2]), "%e/%m/%Y %H:%M:%S")
power$Date = as.Date(strptime(power$Date, "%e/%m/%Y"))
sub = subset(power, Date >= "2007-02-01" & Date <= "2007-02-02")
png(filename = "plot2.png")
plot(sub$DateTime,sub$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "n")
lines(sub$DateTime,sub$Global_active_power)
dev.off()

