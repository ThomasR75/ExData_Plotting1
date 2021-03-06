##set working directory
setwd("c:/Coursera/R/Data4Quiz1")

##reading the file on the requested dates
File <- "household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##creating the plot
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gpower <- as.numeric(subdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, gpower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()