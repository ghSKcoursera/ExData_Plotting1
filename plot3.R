# Your code file should include code for reading the data so that the plot can be fully reproduced.
source('ReadPowerData.R')

# Name each of the plot files as plot1.png, plot2.png, etc. with a width of 480 pixels and a height of 480 pixels.
png(filename='plot3.png', 
	width = 480, 
	height = 480, 
	units = "px")

# Construct the base plot with labels and Sub_metering_1 data in black
plot(powerConsumption.df$dateTime, 
     powerConsumption.df$Sub_metering_1, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Energy sub metering", 
     main="")

# Add Sub_metering_2 data in red
lines(powerConsumption.df$dateTime, 
		powerConsumption.df$Sub_metering_2, 
		col='red')

# Add Sub_metering_3 data in blue
 lines(powerConsumption.df$dateTime, 
		powerConsumption.df$Sub_metering_3, 
		col='blue')

# Add the legend in the top right corner		
legend("topright", 
		lty=1, 
		lwd=1, 
		col=c("black","red","blue"), 
		legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
		
# Close the PNG file device
dev.off()