# laradock-sample

[![GitHub stars](https://img.shields.io/github/stars/tadaken3/laradock-sample.svg)](https://github.com/tadaken3/laradock-sample/stargazers)

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

![demo](https://github.com/tadaken3/laradock-sample/blob/master/media/sample.gif)

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

## 開発の進め方

projectディレクトリ配下にLaravelで使用するファイルが入っています。  
こちらを使って、開発をすすめていきます。githubなどで管理されるのは、このporjectディレクトリになります。  

名前がややこしいのですが、laradockディレクトリ配下が開発環境についてのファイルが保存されており、porjectディレクトリの配下が開発するWEBサービスのファイルになります。

ここややこしいのですが、混同しないようにお気をつけください。

### ワークスペースに入る方法

laravelで、開発を進めるにあたって、必要なコマンドはworkspaceコンテナに入っています。  
以下のコマンドを実行し、workspaceコンテナに接続すると、```php artisan migrate```などのコマンドが実行できます。

```
cd laradock-sample/laradock
docker-compose exec --user=laradock workspace bash
```
