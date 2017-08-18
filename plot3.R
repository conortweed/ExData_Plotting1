## Week 1 Assignment

## Plot 1 code (plot1.png)

raw_data <- read.table("household_power_consumption.txt", 
                       sep = ";", header = TRUE, stringsAsFactors = FALSE) 

#head(raw_data)
#str(raw_data)

subset_data <- subset(raw_data, Date=="1/2/2007" | Date == "2/2/2007")

#head(subset_data)
#str(subset_data)

days <- strptime(paste(subset_data$Date, subset_data$Time, sep = " "), 
                 format = "%d/%m/%Y %H:%M:%S")

sub_meter1 <- as.numeric(subset_data$Sub_metering_1)
sub_meter2 <- as.numeric(subset_data$Sub_metering_2)
sub_meter3 <- as.numeric(subset_data$Sub_metering_3)

png("plot3.png")

plot(days, sub_meter1, type = "l", col = "black", 
     ylab = "Energy sub metering", xlab = " ")

lines(days, sub_meter2, type = "l", col = "red")
lines(days, sub_meter3, type = "l", col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"))

dev.off()
