install.packages("tidyverse")
library(tidyverse)
library(gapminder)
head(gapminder::gapminder)

#Bar
ggplot(gapminder,aes(continent)) +
  geom_bar()

#pipe use in ggplot
gapminder::gapminder%>%
  filter(year==1952)%>%
  ggplot(aes(continent))+
  geom_bar()

#plot population
gapminder::gapminder%>%
  filter(year==1952)%>%
  ggplot(aes(continent,pop))+
  geom_bar(stat="identity")

#stacked bar
gapminder::gapminder%>%
  filter(year>=1952 & year <=1970)%>%
  ggplot(aes(year,pop))+
  geom_bar(stat="identity",aes(fill=continent))
