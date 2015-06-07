hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = '?')
feb2007Data<-hpc[grep("^[12]/2/2007",hpc$Date),]
feb2007Data$Datetime<-strptime(paste(feb2007Data$Date, feb2007Data$Time),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
plot(feb2007Data$Datetime, feb2007Data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(feb2007Data$Datetime, feb2007Data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(feb2007Data$Datetime, feb2007Data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))