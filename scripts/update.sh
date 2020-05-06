#!/bin/bash

sudo yum -y install php72 php72-cli php72-common php72-devel php72-mysqlnd php72-pdo php72-xml php72-gd php72-intl php72-mbstring php72-mcrypt php72-opcache php72-pecl-apcu php72-pecl-imagick php72-pecl-memcached php72-pecl-redis php72-pecl-xdebug

sudo alternatives --set php /usr/bin/php-7.2

php -v

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/bin/composer

composer