#!/bin/bash

set -ex

if [[ "$1" != "master" && "$1" != "staging" && "$1" != "local" ]]; then
  echo "Usage: $0 <master|staging|local>"
  exit 1
fi

[[ ! -f ".env" ]] && echo "'.env' file not found. See '.env.example' for reference." && exit 1

R="$PWD"

if grep -q 'plugins/wp_plugin_yomiclick/php/composer.lock' git_pull.log; then
  echo "composer.lock was updated in the pull."
  cd "./plugins/wp_plugin_yomiclick"
  bash ./bin/pipeline.bash
  cd "$R"
else
  echo "composer.lock was NOT updated in the pull."
fi

#cd "./plugins/wp_plugin_yomiclick_vendor"
#bash ./bin/pipeline.bash
#cd "$R"

# TODO: Temporary exit here
exit 0

F="compose.$1.yaml"
if [[ "$1" == "local" ]]; then F="docker-compose.yml"; fi

docker compose -f "$F" build

docker network inspect yomiclick_network >/dev/null 2>&1 || docker network create yomiclick_network

docker compose -f "$F" up -d --force-recreate --wait
