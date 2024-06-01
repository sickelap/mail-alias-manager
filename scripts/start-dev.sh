#! /usr/bin/env sh

# Exit in case of error
set -e
set -x

docker-compose build
docker-compose down -v --remove-orphans # Remove possibly previous broken stacks left hanging after an error
docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
