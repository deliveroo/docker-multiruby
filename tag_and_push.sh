#!/usr/bin/env bash
set -eu

VERSION=$(cat VERSION)
IMAGE=deliveroo/multiruby:"$VERSION"

# This fails if the tag already exists
# preventing a push to the docker hub.
git tag "$VERSION"
git push --tags

push_image_to_docker_hub "$IMAGE"
