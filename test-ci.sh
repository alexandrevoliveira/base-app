#!/bin/bash

set -o errexit

docker build --no-cache --progress=plain -t alexandrevoliveira/base-app:latest -f ./Dockerfile.dev .
docker run -e CI=true alexandrevoliveira/base-app npm run test:ci
