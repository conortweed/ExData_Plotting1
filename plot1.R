## Week 1 Assignment

## Plot 1 code (plot1.png)

raw_data <- read.table("household_power_consumption.txt", 
                       sep = ";", header = TRUE, stringsAsFactors = FALSE) 
                   
#head(raw_data)
#str(raw_data)

subset_data <- subset(raw_data, Date=="1/2/2007" | Date == "2/2/2007")

#head(subset_data)
#str(subset_data)

global_hist <- as.numeric(subset_data$Global_active_power)

png("plot1.png")

hist(global_hist, 
     col= "red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", 
     xaxt = 'n')

axis(side=1, at = seq(0,6,by=2))

dev.off()


