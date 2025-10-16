#!/bin/bash

set -ex

if docker ps --filter "name=yomiclick_nginx" --format '{{.Names}}' | grep -wq "yomiclick_nginx"; then
  echo -e "\033[32mContainer YomiClick Nginx is running.\033[0m"
  docker exec yomiclick_nginx sh -c "nginx -t && nginx -s reload && echo 'Nginx reloaded'"
else
  echo -e "\033[31mContainer YomiClick Nginx is NOT running.\033[0m"
fi
