power<-read.table("C:/Users/e548847/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings= "?", sep=";", header=TRUE)

power1<-power[power$Date=="1/2/2007",]

power2<-power[power$Date=="2/2/2007",]

power3<-data.frame(rbind(power1,power2))

z<-paste(power3$Date, power3$Time)

happy<-strptime(z, "%d/%m/%Y %H:%M:%S")

plot(happy, power3$Global_active_power, xlab="", ylab= "Global Active Power (kilowatts)", type="l")

dev.copy(png, file="plot2.png")

dev.off()
