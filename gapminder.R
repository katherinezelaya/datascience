library(gapminder)
colnames(gapminder)
library(ggplot2)
library(dplyr)

lifeExp1982 <- gapminder %>% filter(year == 1982)
ggplot(data = lifeExp1982, aes(x= lifeExp)) + geom_histogram()
popAsia <- gapminder %>% filter(continent == 'Asia')
ggplot(data = popAsia, aes(x = year, y= pop, color = country)) + geom_line() + ggtitle('Population in Asia')+ xlab ('Year') + ylab('Population')   

gdp2002 <- gapminder %>% filter(year == 2002, continent =='Europe')  

ggplot(data = gdp2002, aes(x= gdpPercap)) + geom_bar(alpha = 0.5, fill = 'blue')
the_nineties <- gapminder %>% mutate(numstart = substr(year, 1,3)) %>% filter(numstart == '199')
write.csv(the_nineties, 'nineties.csv')
