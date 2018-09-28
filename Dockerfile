FROM golang:alpine

RUN apk add -U ruby ruby-dev ruby-rdoc curl tar wget linux-headers build-base postgresql-dev zlib-dev libxml2-dev libxslt-dev readline-dev tzdata git nodejs libpq postgresql
RUN gem install pg ridgepole
