FROM debian:buster-slim as builder-base

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    apt-utils \
    build-essential  \
    cmake \
    curl \
    libpcsclite1 \
    pkg-config

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM builder-base as builder

RUN cargo install cargo-generate
RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN rustup toolchain install stable-gnu

RUN rustup default stable