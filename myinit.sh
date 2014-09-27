#!/bin/sh
set -x
set -e
#cd $(dirname $0)
cd /home/isucon
app_dir=/home/isucon/webapp

myuser=root
mydb=isu4_qualifier
myhost=127.0.0.1
myport=3306
mysql -h ${myhost} -P ${myport} -u ${myuser} -e "DROP DATABASE IF EXISTS ${mydb}; CREATE DATABASE ${mydb}"
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < $app_dir/sql/schema.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < sql/dummy_users.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < sql/dummy_log.sql
mysql -h ${myhost} -P ${myport} -u ${myuser} ${mydb} < $app_dir/create-idx.sql
