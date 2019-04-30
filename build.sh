#!/usr/bin/env sh
set -xeuo pipefail

IMAGE=deliveroo/multiruby:$(cat VERSION)
docker build -t "$IMAGE" .
