# laradock-sample

## Dockerのインストール
LaradockはDockerを使って、Laravelの環境を構築します。
公式サイトからDockerをダウンロードしてインストールします。

https://docs.docker.com/docker-for-mac/install/

## 環境構築の仕方

ターミナルで以下のコマンドを順番に実行します。
初回はいろいろとDLしたりするので、時間がかかりますが、二回目以降は早いです。

```
git clone https://github.com/tadaken3/laradock-sample
cd laradock-sample/laradock
docker-compose up -d nginx mysql phpmyadmin
docker-compose exec --user=laradock workspace bash

#ここからworkspaceコンテナでの作業になります
cp .env.example .env
composer install
php artisan migrate
php artisan key:generate
```

ブラウザでlocalhostにアクセスして、laravelのサイトが表示されたら成功です。  
http://127.0.0.1/

きちんと開発環境が作れたら、スターを押してもらえると喜びます！


## ワークスペースに入る方法

```
cd laradock-sample/laradock
docker-compose exec --user=laradock workspace bash
```

ここでコマンド実行したりします。

