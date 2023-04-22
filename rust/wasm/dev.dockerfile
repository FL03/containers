FROM rust:latest as base

RUN apt-get update -y && apt-get upgrade -y

FROM base as builder-base

RUN apt-get install -y \
    protobuf-compiler

RUN rustup default nightly && \
    rustup target add wasm32-unknown-unknown wasm32-wasi --toolchain nightly

FROM builder-base as dioxus

RUN cargo install dioxus-cli

FROM builder-base as trunkrs

RUN cargo install trunk wasm-bindgen-cli
