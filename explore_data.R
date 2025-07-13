library(tidyverse)
data()
?starwars
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
head(starwars)

attach(starwars)
names(starwars)
starwars$sex
length(starwars)
length(hair_color)

#View(sort(table(hair_color),decreasing=TRUE))
barplot(sort(table(hair_color),decreasing=TRUE))
starwars %>%
  select(hair_color) %>%
  count(hair_color) %>%
  arrange(desc(n)) %>%
  view()

view(starwars[is.na(hair_color),])  
is.na(hair_color)
summary(height)
hist(height)
boxplot(height)
