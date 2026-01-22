#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

docker build \
    -t coralhl/haproxy-acme:latest \
    "$SCRIPT_DIR/data"
