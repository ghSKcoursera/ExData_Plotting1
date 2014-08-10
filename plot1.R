# Your code file should include code for reading the data so that the plot can be fully reproduced.
source('ReadPowerData.R')

# Name each of the plot files as plot1.png, plot2.png, etc. with a width of 480 pixels and a height of 480 pixels.
png(filename='plot1.png', 
	width = 480, 
	height = 480, 
	units = "px")

# Construct the plot
hist(powerConsumption.df$Global_active_power, 
	main='Global Active Power', 
    xlab='Global Active Power (kilowatts)', 
	col='red')

# Close the PNG file device
dev.off()