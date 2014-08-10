library(lubridate) # http://www.jstatsoft.org/v40/i03/paper

# Read data with designated class assumptions from data source separated by semicolon. Note that in this dataset missing values are coded as ?.
powerConsumption.df <- read.table('household_power_consumption.txt', 
									header=TRUE,
									sep=';', 
									na.strings='?',
									colClasses=c(rep('character', 2), rep('numeric', 7)))
    
# You may find it useful to convert the Date and Time variables to Date/Time classes in R 
powerConsumption.df$Date <- dmy(powerConsumption.df$Date)
powerConsumption.df$Time <- hms(powerConsumption.df$Time)
    
# We will only be using data from the dates 2007-02-01 and 2007-02-02. 
powerConsumption.df <- subset(powerConsumption.df, year(Date) == 2007 & month(Date) == 2 &	(day(Date) == 1 | day(Date) == 2))
    
# Combine date and time
powerConsumption.df$dateTime <- powerConsumption.df$Date + powerConsumption.df$Time
