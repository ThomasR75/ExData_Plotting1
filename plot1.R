##set working directory
setwd("C:/Coursera/R/Data4Quiz1")

##reading the file on the requested dates
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##creating the plot
png("plot1.png", width=480, height=480)
plot <- as.numeric(subdata$Global_active_power)
hist(plot, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()