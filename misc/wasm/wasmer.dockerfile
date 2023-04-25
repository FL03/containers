FROM rust:latest as base

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    libncurses5 \
    protobuf-compiler

FROM base as builder-base

RUN rustup default nightly && \
    rustup target add wasm32-unknown-unknown wasm32-wasi --toolchain nightly

FROM builder-base as wasmer

RUN curl https://get.wasmer.io -sSfL | bash

FROM wasmer

VOLUME [ "/usr/src" ]
VOLUME [ "/config" ]
VOLUME [ "/data" ]