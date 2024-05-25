FROM ubuntu:20.04

RUN apt-get update && apt-get install -y build-essential cmake ninja-build wget unzip
RUN useradd -u 1000 -m user
USER user

WORKDIR /home/user
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.9.2/protoc-3.9.2-linux-x86_64.zip 
RUN unzip protoc-3.9.2-linux-x86_64.zip -d $HOME/.local
RUN export PATH="$PATH":$HOME/.local/bin

CMD bash
