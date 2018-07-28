# laradock-sample

## Dockerのインストール
LaradockはDockerを使って、Laravelの環境を構築します。
公式サイトからDockerをダウンロードしてインストールします。

https://docs.docker.com/

## 環境構築の仕方

ターミナルで以下のコマンドを順番に実行します。
初回はいろいろとDLしたりするので、時間がかかりますが、二回目以降は早いです。

Macユーザーの方は、セットアップ用のスクリプトを用意しています。
以下を実行してもらうと、Laravelの環境が作成されます。

```
git clone https://github.com/tadaken3/laradock-sample
sh laradock-sample/setup.sh
```

実行するとこのように、必要なファイルなどがダウンロードされ、セットアップされます。

![demo](https://github.com/tadaken3/laradock-sample/blob/media/sample.gif)

ブラウザでlocalhostにアクセスして、laravelのサイトが表示されたら成功です。

http://127.0.0.1/

きちんと開発環境が作れたら、スターを押してもらえると喜びます！

### Mac以外の方は、お使いの環境に合わせて、以下のコマンドを順に実行してください。
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

## ワークスペースに入る方法

```
cd laradock-sample/laradock
docker-compose exec --user=laradock workspace bash
```

ここでコマンド実行したりします。

