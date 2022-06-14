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

FROM environment

RUN apt-get install -y  \
    libatk1.0.0  \
    libcairo2-dev  \
    libffi-dev  \
    libglib2.0-dev  \
    libpcre2-dev  \
    libsdl-pango-dev


RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN rustup toolchain install stable-gnu
RUN apt-get update -y