# Using R Studio Server for the Workshop

This is a docker image designed to create the slides and run the example code contained in https://github.com/cole-brokamp/geoinformatics_and_population_health_in_R

## Running

```
docker run -d -p 8787:8787 quay.io/colebrokamp/ace-2018
```

Visit `localhost:8787` in your browser and log in with username:password as `rstudio:rstudio`.

## Building

```
docker build -t ace-2018 ./shiny_server/Dockerfile
```

An automated build of this image is hosted on quay.io.  Trigger a new build by pushing to this repository.
