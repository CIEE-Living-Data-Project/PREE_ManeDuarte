              ##### Creating the figures for the manuscript #####

# Author: Mary Paz Mane Duarte
# Date: 2022-09-27

# Needed libraries #
library(groundhog)
groundhog.library("tidyverse", "2022-09-25")
groundhog.library("ggplot2", "2022-09-25")


# Pulling the data from OSF to an object called "communities"
communities <- read.csv("https://osf.io/gdpbh/download")


# Selecting only the first 5 rows to work with in a new object
comms_phylodiv <- communities %>%
  select(1:5)


# Creating the first scatterplot for the Net Relatedness Index with the columns 
# "Community" as an x axis and "NRI" as the y axis
comms_phylodiv %>% 
  ggplot(aes(x=Community, y=NRI)) + 
  geom_point(size=3) +
  labs(y = "Net Relatedness Index (NRI)", caption = "Figure 1. Variation in Net Relatedness Index (NRI) between coastal dune shrub (CDS), mangrove (M), peten (P) and tropical low 
  flooding forests (TLFF). Positive values indicate phylogenetic clustering and negative values indicate phylogenetic evenness.") +
  theme(axis.text.x = element_text(family="serif", color="black", face="bold", size = 11)) + 
  theme(axis.text.y = element_text(family="serif", color="black", face="bold", size = 11)) +
  theme(axis.line = element_line(size = 0.5, linetype = "solid")) +
  theme(axis.title.y = element_text(family="serif", face="bold", size = 11)) +
  theme(axis.title.x = element_blank()) +
  scale_y_continuous(limit = c(-2, 3)) +
  geom_hline(yintercept=0, linetype="dashed", color = "black") +
  theme(plot.caption.position = "plot", plot.caption = element_text(family="serif", hjust = 0.5))


# Creating the second scatterplot for the Nearest Taxon Index with the columns 
# "Community" as an x axis and "NRI" as the y axis
comms_phylodiv %>% 
  ggplot(aes(x=Community, y=NTI)) + 
  geom_point(size=3) +
  labs(y = "Nearest Taxon Index (NTI)", caption = "Figure 2. Variation in Nearest Taxon Index (NTI) between coastal dune shrub (CDS), mangrove (M), peten (P) and tropical low 
       flooding forests (TLFF). Positive values indicate phylogenetic clustering and negative values indicate phylogenetic evenness.") +
  theme(axis.text.x = element_text(family="serif", color="black", face="bold", size = 11)) + 
  theme(axis.text.y = element_text(family="serif", color="black", face="bold", size = 11)) +
  theme(axis.line = element_line(size = 0.5, linetype = "solid")) +
  theme(axis.title.y = element_text(family="serif", face="bold", size = 11)) +
  theme(axis.title.x = element_blank()) +
  scale_y_continuous(limit = c(-2, 3)) +
  geom_hline(yintercept=0, linetype="dashed", color = "black") +
  theme(plot.caption.position = "plot", plot.caption = element_text(family="serif", hjust = 0.5))

