#!/bin/bash

# publicフォルダに移動
cd ../$APP/public

# get phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.8.3/phpMyAdmin-4.8.3-all-languages.zip
unzip phpMyAdmin-4.8.3-all-languages.zip

# ファイル名変更
mv phpMyAdmin-4.8.3-all-languages phpMyAdmin