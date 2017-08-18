## Week 1 Assignment

## Plot 2 code (plot2.png)

raw_data <- read.table("household_power_consumption.txt", 
                       sep = ";", header = TRUE, stringsAsFactors = FALSE) 

head(raw_data)
str(raw_data)

subset_data <- subset(raw_data, Date=="1/2/2007" | Date == "2/2/2007")
head(subset_data)

days <- strptime(paste(subset_data$Date, subset_data$Time, sep = " "), 
                 format = "%d/%m/%Y %H:%M:%S")


glob_power <- as.numeric(subset_data$Global_active_power)

png("plot2.png")

plot(days, glob_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()

