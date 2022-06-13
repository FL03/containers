FROM debian:buster-slim as environment

RUN apt-get update -y

RUN apt-get install -y  \
    build-essential  \
    curl

RUN apt-get update -y

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"