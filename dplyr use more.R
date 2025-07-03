library(dplyr)
sum(3,2) %>% mean() %>% log()

library(gapminder)
gapminder::gapminder %>% select(country, pop) %>% head()

#use of mutate() function
#use of arrange( function)
gapminder::gapminder %>% mutate(TotalGDP=pop*gdpPercap)%>% arrange(TotalGDP)
gapminder::gapminder %>% mutate(TotalGDP=pop*gdpPercap)%>% arrange(desc(TotalGDP))

