# Reproducible Research in R: Geoinformatics, Epidemiology, and Publicly Available Health and GIS Data  

**Instructor**: Cole Brokamp, Department of Pediatrics, Cincinnati Children's Hospital Medical Center; Cincinnati, OH  
**Co-Instructors**: Chris Wolfe, Nobel Bhuiyan, Juliana Madzia, Erika Rasnick  
**Setting**: Workshop for American College of Epidemiology 2018 Annual Meeting  
**Date**: Sunday, September 23rd, 2018

*This workshop is supported by the Geospatial Research Accelerator for Precision Population Health (GRAPPH) at Cincinnati Children's Hospital Medical Center (CCHMC).*

## Description

This workshop is designed for R beginners who wish to conduct reproducible research using geoinformatics and epidemiology methods with publicly available health and geospatial data. Participants will gain a general understanding of the software tools available and learn how to explore and learn them further on their own.  Additionally, participants will gain applied experience through a "hands on" session using R. Over the course of one day, we will cover:

1. Brief introduction/refresher to `R` and the `tidyverse`
2. Why to use R for reproducible research, including R Markdown and integrated data import, analysis, and reporting
2. Introduction to using R for geoinformatics and GIS, including data import/export, interactive mapping, and GIS feature extraction
3. How to access and use publicly available health and geospatial data in R to conduct an epidemiologic analysis

The course will culminate in an applied example in which attendees will analyze the relationship between a geospatial measure and health outcome of their choosing. The entire project, including data import, exposure assessment, exploratory data analysis, mapping, statistical analysis, and reporting, will be conducted within R. 

## Course Requirements

- Course attendees are expected to have an introductory knowledge of `R` and the `tidyverse`. Please review [R for Data Science](http://r4ds.had.co.nz/) ahead of time if you need a refresher.
- If planning on attending the second half of the workshop (a "hands on" applied example), the first half of the workshop is mandatory; however, participants can attend the didactic first half of the workshop without attending the second half of the workshop.
- To attend and participate in the "hands on" portion, please bring a computer with R and the following packages installed:
	- `tidyverse`
	- `sf`
	- `tidycensus`
	- `tigris`
- Alternatively, an R Studio Server instance will be available for the duration of the course so that users can participate using any computer with a web browser.

Please contact the course organizer, Cole Brokamp (cole dot brokamp at cchmc dot org) with any questions.

## Course Materials

All course materials will be hosted within this repository (https://github.com/cole-brokamp/geoinformatics_and_population_health_in_R), including slides and example code.

## Detailed Course Outline

*This is a work in progress and subject to change!*

- Why to use `R` for reproducible research (Cole Brokamp)
    - what is reproducible research?
    - `knitr` and R Markdown
    - motivating example
- `tidyverse` refresher (Chris Wolfe)
    - `magrittr` and the pipe operator, `%>%`
    - `dplyr`: `select`, `filter`, `mutate`
    - tidy data and `tidyr`
    - `ggplot2`
- Geoinformatics in R (Cole Brokamp)
    - geospatial data (and simple features)
    - `sf` package
        - import/export of spatial data
        - mapping with `ggplot2`
        - mapping with `tmap` and `mapview`
        - feature extraction (`st_join`, `st_buffer`, etc)
- "Hands On" Example

## Further Reading and Resources

### Textbooks

- [R for Data Science](http://r4ds.had.co.nz/)
- [Geocomputation with R](https://geocompr.robinlovelace.net/)

### Blog Posts, Vignettes, etc

- https://www.r-spatial.org/r/2018/05/31/geocompr-erum.html
- https://gist.github.com/anonymous/3d5b56cb16526db96dcaa0a579980187
- https://github.com/abhirupdatta/spatial-statistics-2018/tree/master/slides
- https://jessesadler.com/post/gis-with-r-intro/

- [r-spatial](http://r-spatial.org/)
- [Spatial Data in R: New Directions](https://edzer.github.io/UseR2017/) - Edzer Pebesma's UseR! 2017 tutorial
- [ACS mapping with tidycensus - Austin Wehrwein](http://austinwehrwein.com/tutorials/update-2-acs-mapping-tidycensus/)
- [Web Mapping in R](https://bhaskarvk.github.io/leaflet-talk-rstudioconf-2017/RstudioConf2017.html#1)
	- [code for talk](https://github.com/bhaskarvk/leaflet-talk-rstudioconf-2017)
	- [tons of leaflet examples on Bhaskar's RPubs site](http://rpubs.com/bhaskarvk)

#### `tmap`

- [https://github.com/mtennekes/tmap](https://github.com/mtennekes/tmap)
- [tmap in a nutshell](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-nutshell.html)
- [tmap modes: plot and interactive view](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-modes.html)

### Data Sources

- [IPUMS](https://www.ipums.org/) - census and survey data from around the world integrated across time and space
	- [IPUMS USA](https://usa.ipums.org/usa/) - US census data for social, economic, and health research
 	- [IPUMS NHGIS](https://www.nhgis.org/) - US geographic summary data and boundary files
 	- [IPUMS Terra](https://www.terrapop.org/) - integrated population and environmental data across disciplinary scientific domains
 	- [IPUMS Health Surveys](https://www.ipums.org/healthsurveys.shtml - harmonized data from US national health surveys (NHIS & MEPS)
- [Esri Open Data](https://hub.arcgis.com/pages/open-data) - contributed open data sets maintained by Esri
- [USGS Earth Explorer](https://earthexplorer.usgs.gov/) - remote sensing data
- [OpenStreetMap(OSM)](http://wiki.openstreetmap.org/wiki/Downloading_data) - crowdsourced map data



