FROM ubuntu:18.04

ENV TZ=Australia/Sydney
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER root
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install

RUN apt-get upgrade -y && \
    apt-get install -y git-core python php-cli php-curl jq && \
    node -v && \
    npm -v && \
    npm install apigeetool -g \
    npm install i apigee-edge-js \
    npm install i node-getopt \
    npm install grunt-cli --save-dev \
    npm install openapi2apigee -g

VOLUME /code
WORKDIR /code