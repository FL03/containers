FROM ghcr.io/cirruslabs/flutter:latest as builder-base

RUN apt-get update -y && apt-get upgrade -y

ENV NODE_VERSION=18

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -

RUN apt-get update -y

RUN apt-get install -y nodejs yarn

RUN npm install -g npm
