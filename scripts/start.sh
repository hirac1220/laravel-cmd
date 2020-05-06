#!/bin/bash

cd ../$APP

# MySQL起動
sudo service mysqld start

# Webサーバー起動（ログインしたら必ず実行）
kill `lsof -ti:$PORT`
php artisan serve --port=8080