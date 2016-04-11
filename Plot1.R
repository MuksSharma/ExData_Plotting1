##
## R Script for plot #1
## 
source("Global.R")

# Load the data (specific days)
plot_data <- load_data()

# Open a png device  
png("plot1.png", width=480, height=480)

# Plot the histogram for Global_active_power  
hist(plot_data$Global_active_power,
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    ylab="Frequency",
    col="red")

# Turn off the devices  
dev.off()