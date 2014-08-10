# Your code file should include code for reading the data so that the plot can be fully reproduced.
source('ReadPowerData.R')

# Name each of the plot files as plot1.png, plot2.png, etc. with a width of 480 pixels and a height of 480 pixels.
png(filename='plot4.png', 
	width = 480, 
	height = 480, 
	units = "px")

# Set up for 2x2 matrix of plots (plots are filled row-wise)
par(mfrow=c(2,2))

# Construct the Global Active Power plot
plot(powerConsumption.df$dateTime, 
     powerConsumption.df$Global_active_power, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Global Active Power", 
     main="")

# Construct the Voltage plot
plot(powerConsumption.df$dateTime, 
     powerConsumption.df$Voltage, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Voltage", 
     main="")
	 
# Construct the Energy sub metering plot (sub metering 1 data in black)
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

# Construct the Global Reactive Power Plot
plot(powerConsumption.df$dateTime, 
     powerConsumption.df$Global_reactive_power, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Global_reactive_power", 
     main="")

# Close the PNG file device
dev.off()