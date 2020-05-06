-- show database
show databases;

-- create db
create database if not exists c9;

-- set user/pwd
update mysql.user set password=password('root') where user='root';
flush privileges;