# ----------------------------------------
#
# The primary intention of this image is to inherit
# uoa-inzight-base image and install Probability specific 
# packages
#
# ----------------------------------------
FROM scienceis/uoa-inzight-base:latest

MAINTAINER "Science IS Team" ws@sit.auckland.ac.nz

ENV BUILD_DATE "2016-01-25"

# Install (via R) all of the necessary packages (R will automatially install dependencies):
RUN R -e "install.packages( \
            c('colorspace', 'grid'), \ 
            repos='http://cran.rstudio.com/' \ 
          )" \
  && rm -rf /tmp/* /var/tmp/*

