FROM matrixdotorg/synapse

MAINTAINER Fabian Kaindl <github-docker@fabiankaindl.de>

RUN apt-get update && \
    apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
