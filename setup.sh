#!/bin/bash

echo "======================================="
echo "Тг канал - https://t.me/zeromvx_crypto"
echo "======================================="
sleep 10

sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential pkg-config libssl-dev git-all unzip

apt install screen

source "$HOME/.cargo/env"

sudo echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

rustup update

sudo apt remove -y protobuf-compiler

curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip

unzip protoc-25.2-linux-x86_64.zip -d "$HOME/.local"

sudo rm protoc-25.2-linux-x86_64.zip

sudo echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

protoc --version
