FROM rocker/rstudio:3.5.1

MAINTAINER Cole Brokamp cole.brokamp@gmail.com

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libjq-dev \
    liblwgeom-dev \
    libproj-dev \
    libprotobuf-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    netcdf-bin \
    protobuf-compiler \
    tk-dev \
    unixodbc-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'options(repos=c(CRAN = "https://cran.rstudio.com/"), download.file.method="libcurl")' >> /etc/R/Rprofile.site

RUN R -e "install.packages('tidyverse')"

RUN R -e "install.packages('sf')"

RUN R -e "install.packages('tidycensus')"

RUN R -e "install.packages('tigris')"

RUN R -e "install.packages('tmap')"

RUN R -e "install.packages('mapview')"
