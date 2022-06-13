FROM ubuntu as base

RUN apt-get update -y

RUN apt-get install -y  \
    build-essential  \
    curl

RUN apt-get update -y

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM base as nightly

RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN rustup default nightly