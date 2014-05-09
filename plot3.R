power<-read.table("C:/Users/e548847/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings= "?", sep=";", header=TRUE)

power1<-power[power$Date=="1/2/2007",]

power2<-power[power$Date=="2/2/2007",]

power3<-data.frame(rbind(power1,power2))

z<-paste(power3$Date, power3$Time)

happy<-strptime(z, "%d/%m/%Y %H:%M:%S")

plot(happy, power3$Sub_metering_1, xlab="", ylab= "Energy sub metering", type="n")

lines(happy,power3$Sub_metering_1)
lines(happy,power3$Sub_metering_2, col = "red")
lines(happy,power3$Sub_metering_3, col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty = c(1,1,1))

dev.copy(png, file="plot3.png")

dev.off()
