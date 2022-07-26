FROM jo3mccain/container as environment-builder

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM environment-builder as builder

RUN cargo install cargo-generate
RUN rustup toolchain install nightly
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN rustup toolchain install stable-gnu

RUN rustup default stable