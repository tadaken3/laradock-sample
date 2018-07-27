# laradock-sample

## 使い方

```
git clone https://github.com/tadaken3/laradock-sample
cd laradock-sample/laradock
docker-compose up -d nginx mysql phpmyadmin
docker-compose exec --user=laradock workspace bash

#ここからworkspaceコンテナでの作業になります
compose install
cp .env.example .env
php artisan migrate
php artisan key:generate
```
