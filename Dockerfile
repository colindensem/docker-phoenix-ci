FROM elixir:1.3
MAINTAINER Colin Densem "hello@summit360.co.uk"

ENV 		DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common apt-transport-https ruby xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 && \
    apt-get install -y mysql-client && \

    # Add Node.js apt key
    apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280 && \
    apt-add-repository "deb https://deb.nodesource.com/node_6.x precise main" && \
    # Install Node.js and Yarn
    apt-get update && \
    apt-get --yes --force-yes --quiet install nodejs && \
    # Clean up
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
