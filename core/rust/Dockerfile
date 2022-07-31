FROM ../Dockerfile as stable

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

FROM stable as nightly

RUN rustup toolchain install nightly && \
    rustup target add wasm32-unknown-unknown --toolchain nightly && \
    rustup default nightly