#R codes for plot4.png

#Plot 4
png(filename="plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
with(hpc,{
  plot(datetime,Global_active_power,type="l",ylab="Global Active Power",xlab="")
  plot(datetime,Voltage,type="l",ylab="Voltage",xlab="datetime")
  plot(datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col='black')
  lines(datetime,Sub_metering_2,type="l",col='red')
  lines(datetime,Sub_metering_3,type="l",col='blue')
  legend("topright", 
         legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),
         bty="n",lty=1)  
  plot(datetime,Global_reactive_power,type="l")
})
dev.off()