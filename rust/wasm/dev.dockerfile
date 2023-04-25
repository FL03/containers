FROM jo3mccain/rust-wasm as base

RUN apt-get update -y && apt-get upgrade -y

FROM base as dioxus

RUN cargo install dioxus-cli

FROM base as trunkrs

RUN cargo install trunk wasm-bindgen-cli
