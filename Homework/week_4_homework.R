###Week 4 Assignment----
library(tidyverse)

##Create a tibble named surveys from the portal_data_joined.csv file.----
surveys <- read_csv("data/portal_data_joined.csv")
str(surveys)

##Subset surveys using Tidyverse methods to keep rows with weight between 30 and 60
surveys %>%
  filter(weight>30 & weight<60) %>%
  ##Print out the first 6 rows.----
  head()

##Create a new tibble showing the maximum weight for each species + sex combination and name it biggest_critters----
biggest_critters <- surveys %>%
  filter(!is.na(weight))%>%
  group_by(species_id, sex) %>%
  summarize(max_weight = max(weight))
  
##Sort the tibble to take a look at the biggest and smallest species + sex combinations. ----
biggest_critters %>%
  arrange(max_weight)%>%
  arrange(desc(max_weight))

##Try to figure out where the NA weights are concentrated in the data- is there a particular species, taxa, plot, or whatever, where there are lots of NA values?----
surveys %>%
  filter(is.na(weight)) %>%
  group_by(species_id) %>%
  tally() %>%
  arrange(desc(n))

##Take surveys, remove the rows where weight is NA and add a column that contains the average weight of each species+sex combination to the full surveys dataframe. ----
surveys_avg_weight <- surveys %>%
  filter(!is.na(weight)) %>%
  group_by(species_id, sex) %>%
  mutate(avg_weight = mean(weight)) %>%
  ##Get rid of all the columns except for species, sex, weight, and your new average weight column.Save this tibble as surveys_avg_weight----
  select(species_id, sex, weight, avg_weight)

surveys_avg_weight

##Take surveys_avg_weight and add a new column called above_average that contains logical values stating whether or not a row’s weight is above average for its species+sex combination ----
surveys_avg_end <- surveys_avg_weight %>%
  mutate(above_average = weight > avg_weight) %>%

surveys_avg_end
