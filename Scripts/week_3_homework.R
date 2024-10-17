#load server data frame
library("tidyverse")
surveys <- read.csv("data/portal_data_joined.csv")
surveys

#creating a data frame
select(surveys, species_id, weight, plot_id)

#only the first 5000 rows
surveys2 <- select(surveys, species_id, weight, plot_id)
surveys2[1:5000,]
rm(surveys2)

Surveys3 <- surveys[1:5000, c("species_id", "weight", "plot_id")]
Surveys3

#Convert both species_id and plot_type to factors
str(Surveys3)
Surveys3$species_id <- as.factor(Surveys3$species_id)
class(Surveys3$species_id)

Surveys3$plot_id <- as.factor(Surveys3$plot_id)
class(Surveys3$plot_id)

Surveys3

#Remove all rows where there is an NA in the weight column
Surveys3[!is.na(Surveys3$weight)]
