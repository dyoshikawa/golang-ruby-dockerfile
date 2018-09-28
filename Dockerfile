FROM golang:alpine

RUN apk add -U ruby ruby-dev ruby-rdoc curl tar wget linux-headers build-base postgresql-dev zlib-dev libxml2-dev libxslt-dev readline-dev tzdata git nodejs libpq postgresql
RUN gem install pg ridgepole

# install dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
