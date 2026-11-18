#!/usr/bin/env bash
set -e
REPO="briarlightie/rawbulletin"
TAG="bright-delta-bright-harbor"
LIB="stone-curtain.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
