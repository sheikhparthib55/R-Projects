?plot
head(cars)
plot(cars)
plot(cars$speed,cars$dist,col="blue")

plot(cars$speed,cars$dist,col="blue",main = "my Plot")
plot(cars$speed,cars$dist,"l",col="blue")
plot(cars$speed,cars$dist,"h",col="blue")

