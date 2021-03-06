household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
hps<-subset(household_power_consumption, Date=="1/2/2007" | Date == "2/2/2007")
png(filename="plot3.png", width=480, height=480)
with(hps, plot(as.numeric(as.character(hps$Sub_metering_1)),type="l", xaxt="n", col="Black",ylab="Energy sub metering"))
with(hps, lines(as.numeric(as.character(hps$Sub_metering_2)),type="l", xaxt="n", col="Red",ylab="Energy sub metering"))
with(hps, lines(as.numeric(as.character(hps$Sub_metering_3)),type="l", xaxt="n", col="Blue",ylab="Energy sub metering"))
legend("topright", lty=1, col=c("Black","Red","Blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1, at=c(1,nrow(hps)/2,nrow(hps)),labels=c("Thu","Fri","Sat")) 
dev.off()
