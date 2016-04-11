##
## R Script for plot #2
## 
source("Global.R")

# Load the data (specific days)
plot_data <- load_data()

# Open a png device  
png("plot2.png", width=480, height=480)

# Plot the line graph with Global_active_power & Time
plot(plot_data$Time, plot_data$Global_active_power,
     type="l",
     xlab = " ",
     ylab="Global Active Power (kilowatts)")

# Turn off the devices  
dev.off()