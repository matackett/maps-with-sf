library(tidyverse)
library(sf)
library(rgdal)

#read in data-------------------------------------------------------------------

ncshape <- readOGR("data/tl_2019_37_tract.shp")

#converting data to sf object, so we can use code compatible with tidyverse-----

ncshape2 <- st_as_sf(ncshape)

#filter out durham county-------------------------------------------------------

durham <- ncshape2 %>%
  filter(COUNTYFP == "063")

#make basic plot of census tracts in durham county------------------------------
ggplot(data = durham) +
  geom_sf()

# testing push



