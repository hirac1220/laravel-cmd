#!/bin/bash

cd ../$APP

# install bootstrap
composer require laravel/ui
php artisan ui bootstrap

# install crud-d-scaffold
composer require dog-ears/crud-d-scaffold
php artisan|grep crud

# add auth
php artisan make:auth

# add static files
php artisan vendor:publish --tag=public --force

# copy crud-d-scaffold_case0010.json file
cp ./vendor/dog-ears/crud-d-scaffold/crud-d-scaffold_case0010.json ./crud-d-scaffold.json

# setup
php artisan crud-d-scaffold:setup -f

# npm install/run dev
npm install
npm run dev

# migrate
php artisan migrate

# seed
php artisan db:seed
