#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

docker build \
    -t coralhl/haproxy-acme:latest \
    "$SCRIPT_DIR/haproxy-acme/data"

# docker build \
#     -t coralhl/haproxy-acme-http01:latest \
#     "$SCRIPT_DIR/haproxy-acme-http01/data"

docker build \
    -t coralhl/haproxy-acme-dns01:latest \
    "$SCRIPT_DIR/haproxy-acme-dns01/data"
