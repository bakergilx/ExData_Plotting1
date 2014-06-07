power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
power$Date <- as.Date(strptime(power$Date, "%e/%m/%Y"))
sub <- subset(power, Date >= "2007-02-01" & Date <= "2007-02-02")
png(filename = "plot1.png")
hist(sub$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

