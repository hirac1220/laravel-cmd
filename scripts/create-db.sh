#!/bin/bash

# start
sudo service mysqld start

cat <<EOF > .my.cnf
[client]
user = root
password =
host = localhost
EOF

echo 'CREATE DATABASE IF NOT EXISTS' $DB_DATABASE | mysql --defaults-file=.my.cnf
cat ./db/restore.sql | mysql --defaults-file=.my.cnf $DB_DATABASE

rm -f .my.cnf