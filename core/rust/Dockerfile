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