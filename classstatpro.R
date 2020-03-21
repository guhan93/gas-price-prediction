data("gasprice")
View(gasprice)
print(gasprice)
is.ts(gasprice)
plot(gasprice)
a=decompose(gasprice)
plot(a)
hw1=HoltWinters(gasprice)
hw1

plot.ts(gasprice,ylab="prices")
lines(hw1$fitted[,1],lty=2,col="blue")

hw1.pred=predict(hw1,10,prediction.interval="true")
hw1.pred

plot.ts(gasprice,ylab="prices")
lines(hw1$fitted[,1],lty=2,col="red")
lines(hw1.pred[,1],col="yellow")
lines(hw1.pred[,1],col="blue")
lines(hw1.pred[,2],col="seagreen",lty=2)
lines(hw1.pred[,3],col="seagreen",lty=2)

fc=forecast(gasprice,h=50)
fc
plot(fc)
