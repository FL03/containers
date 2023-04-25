FROM rust:latest as base

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    nodejs \
    npm \
    protobuf-compiler
