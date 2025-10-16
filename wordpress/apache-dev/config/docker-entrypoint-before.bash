#!/bin/bash

rsync --daemon --detach --port=873

# docker pull wordpress:apache
# docker image inspect wordpress:apache --format='{{json .Config.Entrypoint}}'
docker-entrypoint.sh "$@"
