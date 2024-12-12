#Task 1 - Read in Data
library(tidyverse)
tyler_data <- read.csv("https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv")

#Task 2 - Filter out non-running activities
tyler_run <- tyler_data %>%
  filter(sport == "running") %>%
  #Task 3 - Filter for normal running
  filter(minutes_per_mile < 10.00 & minutes_per_mile > 5.00,
         total_elapsed_time_s > 60) %>%
  #Task 4 - Group observations into 3 time periods
  mutate(time_period = case_when(
    year < 2024 ~ "Pre-2024",
    year == 2024 & month %in% 1:6 ~ "Jan24-Jun24",
    year == 2024 & month %in% 7:12 ~ "Jul24-Present"
  ))

#Task 5 - Scatter plot w/ SPM over speed by lap
library(ggplot2)

tyler_run %>%
  ggplot(aes(
    x = steps_per_minute,
    y = minutes_per_mile,
    color = time_period
  )) +
  geom_point(alpha = 0.5)
  


