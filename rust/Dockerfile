FROM rust:latest as base

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    protobuf-compiler

FROM base as nodejs

ENV NODE_VERSION=18

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -

RUN apt-get update -y

RUN apt-get install -y nodejs yarn
