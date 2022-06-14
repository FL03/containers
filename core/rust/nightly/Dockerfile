FROM debian:buster-slim as environment

RUN apt-get update -y

RUN apt-get install -y  \
    build-essential  \
    cmake \
    curl \
    nodejs \
    pkg-config \
    python3 \
    npm \
    yarn

RUN apt-get update -y

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM environment as nightly

RUN cargo install cargo-generate
RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN rustup default nightly