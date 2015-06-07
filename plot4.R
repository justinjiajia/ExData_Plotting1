hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = '?')
feb2007Data<-hpc[grep("^[12]/2/2007",hpc$Date),]
feb2007Data$Datetime<-strptime(paste(feb2007Data$Date, feb2007Data$Time),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
par(mfrow = c(2, 2))
# plot 1
plot(feb2007Data$Datetime, feb2007Data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
# plot 2
plot(feb2007Data$Datetime, feb2007Data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
# plot 3
plot(feb2007Data$Datetime, feb2007Data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(feb2007Data$Datetime, feb2007Data$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2",     col = "red")
points(feb2007Data$Datetime, feb2007Data$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3",     col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )
# plot 4
plot(feb2007Data$Datetime, feb2007Data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))