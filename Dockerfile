FROM ubuntu:20.04

RUN apt-get update && apt-get install -y build-essential cmake ninja-build protobuf-compiler
RUN useradd -u 1000 -m user
USER user

WORKDIR /home/user
CMD bash
