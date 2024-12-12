library(tidyverse)
library(ggplot2)

gapminder <- read.csv("https://ucd-r-davis.github.io/R-DAVIS/data/gapminder.csv")

#create a plot that shows time over continent, calculate mean life expectancy
gapminder %>%
  group_by(continent, year) %>%
  summarise(mean_lifeExp = mean(lifeExp)) %>%
  ggplot() +
  geom_line(aes(x = year, y = mean_lifeExp, color = continent)) +
  geom_point(aes(x = year, y = mean_lifeExp, color = continent, size = )) +
  #creates an average line
  geom_smooth(aes(x = year, y = mean_lifeExp, color = continent)) +
  scale_x_log10(aes(x = year, y = mean_lifeExp, color = continent))

#create a boxplot including country, lifeexp
countries <- c("Brazil", "China", "El Salvador", "Niger", "United States")

gapminder %>%
  filter(country %in% countries) %>%
  ggplot(aes(x = country, y = lifeExp)) +
  geom_boxplot() +
  geom_jitter(color = "green") +
  ggtitle("Life Expectancy of Five Countries") +
  xlab("Country") +
  ylab("Life Expectancy")
  