FROM jo3mccain/rust:latest as base

RUN apt-get update -y && apt-get upgrade -y

FROM base

RUN rustup default nightly && \
    rustup target add wasm32-unknown-unknown wasm32-wasi --toolchain nightly
