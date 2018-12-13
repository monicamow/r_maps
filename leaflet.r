rm(list=ls())

library(geojsonR)
library(geojsonio)
library(leaflet)

url_path = "https://raw.githubusercontent.com/codeforamerica/click_that_hood/master/public/data/toronto.geojson"

#url_js = FROM_GeoJson(url_file_string = url_path)

toronto = geojson_read(url_path, what="sp")

map <- leaflet(toronto) %>%
    setView(lng = -79.384293, lat = 43.6532, zoom = 12) %>% 
    addProviderTiles("CartoDB.Positron") %>% addPolygons()
map

#OpenStreetMap.BlackAndWhite

map