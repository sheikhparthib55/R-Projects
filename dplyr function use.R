#dplyr function installation
install.packages("dplyr")

library(dplyr)

library(gapminder)

?dplyr

head(gapminder::gapminder)

#extract colum by select()
select(gapminder::gapminder, country)
select(gapminder::gapminder, country,continent)
select(gapminder::gapminder, -country)
select(gapminder::gapminder, starts_with("c"))
select(gapminder::gapminder, ends_with("p"))

#extract row by filter()

#rlang::last_trace()  
#head(gapminder::gapminder)
practice=filter(gapminder::gapminder, country=="Afghanistan")
practice1=filter(gapminder::gapminder, country!="Afghanistan")
#dui ba totodhik country add korte hole %in% c ditei hobe
practice3=filter(gapminder::gapminder,country %in% c ("Afghanistan","Albania"))
filter(gapminder::gapminder,year==1952)
prac4=filter(gapminder::gapminder,year==1952,lifeExp>=40)
                 

