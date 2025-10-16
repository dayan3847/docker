#!/bin/bash

set -ex

# setup
if [ -f "./files/setup/database.sql.tar.gz" ]; then rm -f "./files/setup/database.sql.tar.gz" ; fi ;
# tmp
if [ -f "./files/tmp/database.sql" ]; then rm -f "./files/tmp/database.sql" ; fi ;

# DATABASE
echo -e "\033[35mSTARTING_DATABASE_COPY_PROCESS...\033[0m"
cp "/home/dayan3847/w/yomiclick/workspace/yomiclick_wordpress-master/files/tmp/database.sql" "./files/tmp/database.sql"
echo -e "\033[32mDatabase copied successfully to tmp folder.\033[0m"

echo -e "\033[34mUpdating database URLs from 'wp.yomiclick.com' to 'wp.staging.yomiclick.com'...\033[0m"
grep -o "wp.yomiclick.com" "./files/tmp/database.sql" | wc -l
grep -o "wp.staging.yomiclick.com" "./files/tmp/database.sql" | wc -l
sed -i "s|wp.yomiclick.com|wp.staging.yomiclick.com|g" "./files/tmp/database.sql"
grep -o "wp.yomiclick.com" "./files/tmp/database.sql" | wc -l
grep -o "wp.staging.yomiclick.com" "./files/tmp/database.sql" | wc -l
echo -e "\033[32mDatabase URLs updated successfully.\033[0m"

echo -e "\033[34mCompressing new database backup in setup folder...\033[0m"
tar -czf "./files/setup/database.sql.tar.gz" -C "./files/tmp" "database.sql" | pv --time ;
echo -e "\033[32mNew database backup compressed successfully in setup folder.\033[0m"

echo -e "\033[34mArchiving the database backup...\033[0m"
cp "./files/setup/database.sql.tar.gz" "./files/archive/$(date +"%Y%m%d%H%M%S")-yomiclick-database-staging.tar.gz"
echo -e "\033[32mDatabase backup archived successfully.\033[0m"

# WP_CONTENT
echo -e "\033[35mSTARTING_WP_CONTENT_COPY_PROCESS...\033[0m"

rsync -rav --delete --progress --stats --human-readable "/home/dayan3847/w/yomiclick/workspace/yomiclick_wordpress-master/files/tmp/wp-content" "./files/tmp/"
:> "./files/tmp/wp-content/debug.log"
