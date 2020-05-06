#!/bin/bash

# start
sudo service mysqld start

cat <<EOF > .my.cnf
[client]
user = root
password =
host = localhost
EOF

echo 'CREATE DATABASE IF NOT EXISTS c9' | mysql --defaults-file=.my.cnf
cat ./db/restore.sql | mysql --defaults-file=.my.cnf c9

rm -f .my.cnf