                                ##### Pulling the data #####

# Author: Mary Paz Mane Duarte
# Date: 2022-09-17

# Needed libraries #
library(groundhog)
groundhog.library("skimr", "2022-09-01")


# Pulling the data from OSF to an object called "communities"
communities <- read.csv("https://osf.io/gdpbh/download")

# Checking overview of the data
skim(communities)

# To download data to your device as a csv file and save it in your current working directory: 
write.csv(communities, "communities_phylodiv.csv")
