#!/usr/bin/env bash
set -eu

IMAGE=deliveroo/multiruby:$(cat VERSION)
docker build -t "$IMAGE" .
