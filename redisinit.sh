#!/bin/sh
set -x
set -e
#cd $(dirname $0)
cd /home/isucon
app_dir=/home/isucon/webapp

sudo service redis restart
python /home/isucon/init_redis.py

