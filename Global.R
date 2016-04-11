##
## Global R Script for functions to load the file and prepare the data for plotting
## 

# File Load Function
load_data <- function() {

file_name <- 'household_power_consumption.txt'
filter_dates <- as.Date(c('01/02/2007', '02/02/2007'), "%d/%m/%Y")

# Load the file
  household_power_consumption_df <- read.table(file_name, header = T, sep = ";", na.strings = "?", colClasses = c('character', 'character', rep('numeric',7)))

# Convert Date and Time columns  
  household_power_consumption_df$Time <- strptime(paste(household_power_consumption_df$Date, household_power_consumption_df$Time), "%d/%m/%Y %H:%M:%S")
  household_power_consumption_df$Date <- as.Date(household_power_consumption_df$Date, "%d/%m/%Y")

# Extract the select rows
  household_power_consumption_df <- subset.data.frame(household_power_consumption_df, Date %in% filter_dates)
  
  return(household_power_consumption_df)
}