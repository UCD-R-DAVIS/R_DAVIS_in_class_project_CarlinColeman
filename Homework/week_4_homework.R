###Week 4 Assignment----
library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")

##Create a tibble named surveys from the portal_data_joined.csv file.----


##Subset surveys using Tidyverse methods to keep rows with weight between 30 and 60


##Print out the first 6 rows.----


##Create a new tibble showing the maximum weight for each species + sex combination and name it biggest_critters----


##Sort the tibble to take a look at the biggest and smallest species + sex combinations. ----


##Try to figure out where the NA weights are concentrated in the data- is there a particular species, taxa, plot, or whatever, where there are lots of NA values?----


##Take surveys, remove the rows where weight is NA and add a column that contains the average weight of each species+sex combination to the full surveys dataframe. ----


##Get rid of all the columns except for species, sex, weight, and your new average weight column.Save this tibble as surveys_avg_weight----


##Take surveys_avg_weight and add a new column called above_average that contains logical values stating whether or not a row’s weight is above average for its species+sex combination ----
