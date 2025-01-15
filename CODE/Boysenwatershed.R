library(sf)
library(tidyverse)

getwd()
# Verify the file path
shapefile_path <- "DATA/Continental_US_from_NHDplus_v2-2"

# Load the shapefile into R as an sf object
watershed_sf <- st_read(shapefile_path)

ggplot(watershed_sf) +
  geom_sf()


ggsave('Figures/boysenwatershed.png')


##HELP##