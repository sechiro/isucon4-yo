#!/bin/sh
set -x
set -e
#cd $(dirname $0)
cd /home/isucon
app_dir=/home/isucon/webapp

sudo service redis restart
python /home/isucon/webapp/init_redis.py

