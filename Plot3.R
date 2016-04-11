##
## R Script for plot #3
## 
source("Global.R")

# Load the data (specific days)
plot_data <- load_data()

# Open a png device  
png("plot3.png", width=480, height=480)

# Plot the line graphs for each Energy sub meetering over Time
plot(plot_data$Time, plot_data$Sub_metering_1, type="l", col="black",
     xlab=" ", 
     ylab="Energy sub metering")

lines(plot_data$Time, plot_data$Sub_metering_2, col="red")
lines(plot_data$Time, plot_data$Sub_metering_3, col="blue")

# Add legend on top right
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

# Turn off the devices  
dev.off()