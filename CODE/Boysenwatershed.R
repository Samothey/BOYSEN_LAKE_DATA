### WIND RIVER DRAINAGE, BOYSEN, AND BROOKS LAKE ###
library(sf)
library(tidyverse)

# Load shapefiles
larger_watershed_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/Continental_US_from_NHDplus_v2-2")
smaller_watershed_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/Continental_US_from_NHDplusv2-2_BROOKS")
Boysen_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/Boysen")
brooks_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/brooks")

# Plot Wind River, Boysen, and Brooks
ggplot() +
  geom_sf(data = larger_watershed_sf, fill = "lavenderblush3", color = "lavenderblush3", alpha = 0.5) +
  geom_sf(data = smaller_watershed_sf, fill = "plum3", color = "plum3", alpha = 0.7) +
  geom_sf(data = Boysen_sf, fill = "palevioletred", color = "palevioletred", alpha = 0.7) +
  geom_sf(data = brooks_sf, fill = "darkorchid4", color = "darkorchid4", alpha = 0.7) +
  labs(title = "") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))

ggsave('Figures/WIND_BROOKS_BOYSEN_BWATERSHED.png')

---
  
  ### WIND RIVER AND BROOKS LAKE ###
  ggplot() +
  geom_sf(data = larger_watershed_sf, fill = "lavenderblush3", color = "lavenderblush3", alpha = 0.5) +
  geom_sf(data = smaller_watershed_sf, fill = "plum3", color = "plum3", alpha = 0.7) +
  labs(title = "") +
  theme_minimal() +
  theme(
    panel.background = element_blank(),
    panel.grid = element_blank(),
    plot.background = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank()
  )

ggsave('Figures/WIND_BROOKSWATERSHED.png')

---
  
  ### WIND RIVER DRAINAGE AND BOYSEN ###
  Boysen_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/Boysen")

ggplot() +
  geom_sf(data = larger_watershed_sf, fill = "lavenderblush3", color = "lavenderblush3", alpha = 0.5) +
  geom_sf(data = Boysen_sf, fill = "palevioletred", color = "palevioletred", alpha = 0.7) +
  labs(title = "") +
  theme_minimal() +
  theme(
    panel.background = element_blank(),
    panel.grid = element_blank(),
    plot.background = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank()
  )

ggsave('Figures/WIND_BOYSEN.png')

---
  
  ### WIND RIVER, BOYSEN, AND BROOKS LAKE ###
  brooks_sf <- st_read("/Users/samanthapena/BOYSEN_LAKE_DATA/CODE/brooks")

ggplot() +
  geom_sf(data = larger_watershed_sf, fill = "lavenderblush3", color = "lavenderblush3", alpha = 0.5) +
  geom_sf(data = Boysen_sf, fill = "palevioletred", color = "palevioletred", alpha = 0.7) +
  geom_sf(data = brooks_sf, fill = "darkorchid4", color = "darkorchid4", alpha = 0.7) +
  labs(title = "") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))

ggsave('Figures/WIND_BOYSEN_BROOKS.png')

---
  
  ### JUST BROOKS LAKE ###
  
  ggplot() +
  geom_sf(data = brooks_sf, fill = "darkorchid4", color = "darkorchid4", alpha = 0.7) +
  labs(title = "") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))

ggsave('Figures/BROOKSLAKE.png')

---
  
  ### BROOKS LAKE AND BROOKS WATERSHED ###
  ggplot() +
  geom_sf(data = smaller_watershed_sf, fill = "plum3", color = "plum3", alpha = 0.7) +
  geom_sf(data = brooks_sf, fill = "darkorchid4", color = "darkorchid4", alpha = 0.7) +
  labs(title = "") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))

ggsave('Figures/BROOKS_AND_BWATERSHED.png')

---
  
  ### JUST BOYSEN ###
  ggplot() +
  geom_sf(data = Boysen_sf, fill = "palevioletred", color = "palevioletred", alpha = 0.7) +
  labs(title = "") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))

ggsave('Figures/Boysen.png')
