#!/bin/bash

cd ../$APP

php artisan make:auth

php artisan migrate