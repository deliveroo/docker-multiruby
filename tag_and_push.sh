#!/usr/bin/env sh
set -euo pipefail
VERSION=$(cat VERSION)
IMAGE=deliveroo/multiruby:"$VERSION"

# This fails if the tag already exists
# preventing a push to the docker hub.
git tag "$VERSION"
git push --tags

# Log in to Docker repository
docker login -u "${DOCKER_USER}" -p "${DOCKER_PASS}"

# Push the image
docker push "$IMAGE"
