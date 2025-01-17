library(sf)
library(tidyverse)
# Install required libraries if not already installed
if (!require("sf")) install.packages("sf")
if (!require("ggplot2")) install.packages("ggplot2")

library(sf)
library(ggplot2)

getwd()
# Verify the file path
shapefile_path <- "DATA/Continental_US_from_NHDplus_v2-2"

# Load the shapefile into R as an sf object
watershed_sf <- st_read(shapefile_path)

ggplot(watershed_sf) +
  geom_sf()


ggsave('Figures/boysenwatershed.png')

ggplot(data = watershed_sf) +
  geom_sf(fill = "lavenderblush3", color = "lavenderblush4") +  # Static colors
  labs(title = "Wind River Drainage") +
  theme_void() +  # Removes all gridlines and axes
  theme(plot.title = element_text(hjust = 0.5, size = 16))


# now I have created the shapefile, but want to add some color and personality to it.

  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))


### ATTEMPT TO MERGE 2 WATERSHED DELINATIONS.. 


