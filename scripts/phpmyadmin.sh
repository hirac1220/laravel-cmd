#!/bin/bash

# publicフォルダに移動
cd ../$APP/public

# get phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.zip
unzip phpMyAdmin-5.2.0-all-languages.zip

# ファイル名変更
mv phpMyAdmin-5.2.0-all-languages phpMyAdmin