household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
hps<-subset(household_power_consumption, Date=="1/2/2007" | Date == "2/2/2007")
png(filename="plot3.png", width=480, height=480)
par(mfrow=c(2,2))
with(hps, {
     plot(as.numeric(as.character(hps$Global_active_power)),type="l", xaxt="n", ylab="Global Active Power (kilowats)")   
     axis(1, at=c(1,nrow(hps)/2,nrow(hps)),labels=c("Thu","Fri","Sat"))
     
     plot(as.numeric(as.character(hps$Voltage)),type="l", xaxt="n", ylab="Voltage", xlab="datetime")
     axis(1, at=c(1,nrow(hps)/2,nrow(hps)),labels=c("Thu","Fri","Sat"))
     
     plot(as.numeric(as.character(hps$Sub_metering_1)),type="l", xaxt="n", col="Black",ylab="Energy sub metering")
     lines(as.numeric(as.character(hps$Sub_metering_2)),type="l", xaxt="n", col="Red",ylab="Energy sub metering")
     lines(as.numeric(as.character(hps$Sub_metering_3)),type="l", xaxt="n", col="Blue",ylab="Energy sub metering")
     legend("topright", lty=1, bty="n", col=c("Black","Red","Blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
     axis(1, at=c(1,nrow(hps)/2,nrow(hps)),labels=c("Thu","Fri","Sat"))
     
     plot(as.numeric(as.character(hps$Global_reactive_power)),type="l", xaxt="n", ylab="Global_reactive_power", xlab="datetime")
     axis(1, at=c(1,nrow(hps)/2,nrow(hps)),labels=c("Thu","Fri","Sat"))     
          } )
dev.off()
