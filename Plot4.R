##
## R Script for plot #4
## 
source("Global.R")

# Load the data (specific days)
plot_data <- load_data()

# Open a png device  
png("plot4.png", width=480, height=480)

# Set the layout 2x2
par(mfrow=c(2,2))

# Plot-1 | Global Active Power vs Time (left-top)
plot(plot_data$Time, plot_data$Global_active_power,
     type="l",
     xlab=" ",
     ylab="Global Active Power")

# Plot-2 | Voltage vs Time (right-top)
plot(plot_data$Time, plot_data$Voltage, 
     type="l",
     xlab="datetime", 
     ylab="Voltage")

# Plot-3 | Energy Sub Metering vs Time (left-bottom)
plot(plot_data$Time, plot_data$Sub_metering_1, 
     type="l", 
     col="black",
     xlab=" ", 
     ylab="Energy sub metering")
lines(plot_data$Time, plot_data$Sub_metering_2, col="red")
lines(plot_data$Time, plot_data$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)

# Plot-4 | Global Reactive Power vs Time (right-bottom)
plot(plot_data$Time, plot_data$Global_reactive_power, 
     type="l",
     xlab="datetime", 
     ylab="Global_reactive_power")

# Turn off the devices  
dev.off()