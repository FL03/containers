FROM jo3mccain/container as builder-base

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM builder-base as builder

RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly

RUN rustup default stable