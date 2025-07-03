library(dplyr)
library(gapminder)

#use of summary() function
head(gapminder::gapminder)

gapminder::gapminder%>%
  group_by(continent, country)%>%
  summarise(minimum=min(pop),
            average=mean(pop),
            maximum=max(pop))

#use of gouop_by function
gapminder::gapminder%>% 
  select(country,pop)%>%
  filter(country=="Bangladesh")

