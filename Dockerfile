FROM debian:12.11

WORKDIR /app

RUN apt update && apt install build-essential gcc-aarch64-linux-gnu g++-aarch64-linux-gnu -y
