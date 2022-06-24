#!/bin/bash

# update
sudo yum update -y
sudo yum -y remove php-*
sudo yum update -y amazon-linux-extras
amazon-linux-extras

# disable mariadb
sudo amazon-linux-extras disable lamp-mariadb10.2-php7.2

# php8.0
sudo amazon-linux-extras enable php8.0

# clean & install
sudo yum clean metadata && sudo yum install php-cli php-pdo php-fpm php-mysqlnd
sudo yum install php-cli php-common php-devel php-fpm php-gd php-mysqlnd php-mbstring php-pdo php-xml

# apache restart
sudo systemctl restart httpd.service
sudo systemctl restart php-fpm.service

# maria db install
sudo yum list installed | grep mariadb
sudo amazon-linux-extras install mariadb10.5 -y

# maria db start
sudo systemctl start mariadb
sudo mysql_secure_installation

# auto start
sudo systemctl enable mariadb
sudo systemctl is-enabled mariadb

# composer install
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
composer

# update
sudo composer update