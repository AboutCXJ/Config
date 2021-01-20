#!/bin/sh

wget -O /scripts/docker/shylocks_crontab_list.sh https://cdn.jsdelivr.net/gh/shylocks/Loon@main/docker/crontab_list.sh

echo -e "" >>/scripts/docker/merged_list_file.sh
cat  /scripts/docker/shylocks_crontab_list.sh >>/scripts/docker/merged_list_file.sh





