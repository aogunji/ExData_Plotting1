power<-read.table("C:/Users/e548847/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings= "?", sep=";", header=TRUE)

power1<-power[power$Date=="1/2/2007",]

power2<-power[power$Date=="2/2/2007",]

power3<-data.frame(rbind(power1,power2))

hist(power3$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main= "Global Active Power")

dev.copy(png, file="plot1.png")

dev.off()
