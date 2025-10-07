#!/bin/bash

WWW_DATA_UID=$(id -u www-data)
WWW_DATA_GID=$(id -g www-data)

# if dif of 1000, change it
if [ "$WWW_DATA_UID" -ne 1000 ]; then
    usermod -u 1000 www-data
fi
if [ "$WWW_DATA_GID" -ne 1000 ]; then
    groupmod -g 1000 www-data
fi

# change ownership of files
find . -user "$WWW_DATA_UID" -exec chown www-data {} \;
