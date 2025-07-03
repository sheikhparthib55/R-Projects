library(tidyverse)
library(gapminder)
head(gapminder::gapminder)

#boxplot
ggplot(gapminder,aes(continent,lifeExp))+
  geom_boxplot()

#viioline
ggplot(gapminder,aes(continent,lifeExp))+
  geom_violin()

#facet
ggplot(gapminder,aes(lifeExp,gdpPercap))+
  geom_point()+
  facet_grid(.~continent)

#facet_wrap

#coordinate flip
ggplot(gapminder,aes(continent,lifeExp,fill=continent))+
  geom_boxplot()+
  coord_flip()+
  theme_classic()
