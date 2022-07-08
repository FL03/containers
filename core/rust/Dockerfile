FROM debian:buster-slim

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    build-essential  \
    cmake \
    curl

RUN apt-get update -y

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"