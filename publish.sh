#!/bin/bash

set -e

# Trick to get directory that script is located in
PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker-compose -f ${PATH}/docker-compose-build.yml push