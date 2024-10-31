#Midterm ----
##1 ----
###Read in the file tyler_activity_laps_10-24.csv from the class github page. 
library(tidyverse)
url <- ("https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv")
read_csv(url)
laps <- read_csv(url)

##2----
unique(laps[c("sport")])
running <- laps %>%
  filter(sport=="running")
running

##3----
names(running)

running <- running %>%
  filter(minutes_per_mile > 10 & minutes_per_mile < 5) %>%
  filter(total_elapsed_time_s >= 60)
running

##4----
running <- running %>%
  mutate(pace = case_when(minutes_per_mile < 6 ~ "fast", minutes_per_mile >= 6 & minutes_per_mile <= 8 ~ "medium", minutes_per_mile > 8 ~ "slow")) %>%
  mutate(form = case_when(year == 2024 ~ "new", year < 2024 ~ "old"))

##5----
