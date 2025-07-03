install.packages("ggplot2")
library(ggplot2)
??ggplot2
head(ggplot2::mpg)
ggplot(mpg, mapping = aes(x = cty, y = hwy))      
ggplot(mpg, aes(cty, hwy)) +
  geom_point()
ggplot(mpg, aes(cty, hwy, colour = class)) +
  geom_point()
df0=data.frame(col1=1:3,col2=c(1,4,2))
ggplot(df0,aes(col1,col2))+
  geom_line(size=2,color="red")
