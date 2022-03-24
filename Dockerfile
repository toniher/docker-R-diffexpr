FROM bioconductor/bioconductor_docker:RELEASE_3_14

# File Author / Maintainer
MAINTAINER Toni Hermoso Pulido <toni.hermoso@crg.eu>

# Install external dependencies 
RUN apt-get update -qq && apt-get install -y --no-install-recommends python curl libcurl4-openssl-dev libssl-dev libsqlite3-dev libxml2-dev git wget

COPY deps.R /usr/local

RUN Rscript /usr/local/deps.R

# Clean cache
RUN apt-get clean
RUN set -x; rm -rf /var/lib/apt/lists/*

# Shared mounting
VOLUME /share


