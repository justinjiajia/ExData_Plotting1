hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = '?')
feb2007Data<-hpc[grep("^[12]/2/2007",hpc$Date),]
feb2007Data$Datetime<-strptime(paste(feb2007Data$Date, feb2007Data$Time),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
hist(feb2007Data$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red", breaks = 13, ylim = c(0,1200), xlim = c(0, 6), xaxp = c(0, 6, 3))
