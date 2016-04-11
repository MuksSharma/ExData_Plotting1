##
## R Script for plot #1
## 
source("Global.R")

# Load the data (specific days)
#plot_data <- load_data()
  
png("plotn.png", family="Arial Narrow", type = "quartz", width=400, height=400)
  
hist(plot_data$Global_active_power,
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    ylab="Frequency",
    col="red")
  
dev.off()