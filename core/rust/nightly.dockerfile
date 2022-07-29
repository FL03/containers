FROM jo3mccain/rusty

RUN rustup toolchain install nightly && \
    rustup target add wasm32-unknown-unknown --toolchain nightly && \
    rustup default nightly