#!/bin/bash

set -ex

docker build --tag ghcr.io/dayan3847/yomiclick_wordpress:6.8.2-php8.2-apache-cli .

echo $CR_PAT | docker login ghcr.io -u dayan3847 --password-stdin

docker push ghcr.io/dayan3847/yomiclick_wordpress:6.8.2-php8.2-apache-cli

docker pull ghcr.io/dayan3847/yomiclick_wordpress:6.8.2-php8.2-apache-cli
