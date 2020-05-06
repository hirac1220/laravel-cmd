#!/bin/bash

# MySQL起動
sudo service mysqld start

# Webサーバー起動（ログインしたら必ず実行）
php artisan serve --port=8080