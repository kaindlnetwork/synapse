FROM matrixdotorg/synapse

MAINTAINER Fabian Kaindl <github-docker@fabiankaindl.de>

RUN apt-get update && \
    apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*
