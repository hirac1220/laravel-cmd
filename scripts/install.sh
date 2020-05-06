#!/bin/bash

composer global require "laravel/installer"

composer create-project laravel/laravel ../$APP
