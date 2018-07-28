#!/bin/sh
cd `dirname $0`
cd laradock
docker-compose up -d nginx mysql phpmyadmin
docker-compose exec --user=laradock workspace cp .env.example .env
docker-compose exec --user=laradock workspace composer install
docker-compose exec --user=laradock workspace php artisan migrate
docker-compose exec --user=laradock workspace php artisan key:generate

