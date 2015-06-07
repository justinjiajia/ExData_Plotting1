hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = '?')
feb2007Data<-hpc[grep("^[12]/2/2007",hpc$Date),]
feb2007Data$Datetime<-strptime(paste(feb2007Data$Date, feb2007Data$Time),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")
plot(feb2007Data$Datetime,feb2007Data$Global_active_power,type='l',xlab='', ylab='Global Active Power (kilowatts)')