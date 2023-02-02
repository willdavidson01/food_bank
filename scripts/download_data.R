#### Acquire ####
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("c6d64e9b-f85a-4084-be14-60cf18509203")
package

# get all resources for this package
resources <- list_package_resources("c6d64e9b-f85a-4084-be14-60cf18509203")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
raw_data

path <- "inputs/data/"

# Writing raw data onto a csv 
write_csv(
  x = raw_data,
  paste(path, file = "raw_data.csv", sep = '')
)

head(raw_data)
