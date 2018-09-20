library(tidyverse)
library(sf)
library(tidycensus)

set.seed(224)

# get tracts and population < 18
d <- get_acs(geography = 'tract',
             variables = 'B09001_001E',
             year = 2016,
             state = 39, county = 61,
             geometry = TRUE) %>%
  select(GEOID, n_children = estimate)

# merge in deprivation index
d_dep <- 'https://github.com/cole-brokamp/dep_index/raw/master/ACS_deprivation_index_by_census_tracts.rds' %>%
  url() %>%
  gzcon() %>%
  readRDS() %>%
  as_tibble() %>%
  select(fips_tract_id = census_tract_fips, dep_index)

d <- left_join(d, d_dep, by=c('GEOID' = 'fips_tract_id'))

# simulate admission rate based on model parameters from PICU analysis
# admit_rate per 1000 children = 4.3 + (63 * dep_index)
d <- d %>%
  mutate(simulated_event_rate = 4.3 + (63 * dep_index) + rnorm(n = nrow(d), mean = 0, sd = 1)) %>%
  mutate(simulated_n_events = floor(n_children * simulated_event_rate / 1000))

# create random number of points within each tract
d_simulated_event_locations <-
  d %>%
  st_transform(3735) %>%
  st_sample(d$simulated_n_events) %>%
  st_transform(4326)

# gdal XY driver uses funky eol chars, that cause read_csv to not be able to parse
# use this workaround to write coordinates to CSV file instead
tibble(geometry = d_simulated_event_locations,
       id = 1:length(geometry)) %>%
  st_as_sf() %>%
  cbind(., st_coordinates(.)) %>%
  st_set_geometry(NULL) %>%
  write_csv('./simulated_case_locations.csv')
