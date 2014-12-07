#R codes for plot2.png

#Plot 2
library(lubridate)
hpc$datetime <- as.POSIXct(paste(dmy(hpc$Date),hpc$Time))
png(filename="plot2.png",width = 480, height = 480)
with(hpc,plot(datetime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()