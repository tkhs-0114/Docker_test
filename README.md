# Docker_test

## python Flaskのブランチ

pythonのFlaskサーバー用の環境

``` compose.yaml
services:
  web:
    build: .
    environment:
      FLASK_ENV: development
    ports:
      - "8000:5000"
    volumes:
      - ./src:/usr/src/app
```
build:
（何を設計図にしてコンテナを作るか）
今回の場合は　.　なのでこのディレクトリのDockerfileを設計図にする
environment:
（環境変数を設定する）
調べると必要な変数が分かる？(らしい)
ports:
（公開するポートの設定）
コンテナの5000番を8000番のポートで公開する。
volumes:
（保存しておくデータを指定する）
今回は変更できるようにバインドマウント方式で指定
``` Dockerfile
FROM python:3.10
WORKDIR /usr/src/app
RUN pip install flask==2.3.3
CMD ["flask", "run", "--host=0.0.0.0"]
```
FROM
（設計図になるイメージの指定）
Docker Hubからpythonのイメージを指定
WORKDIR
（作業ディレクトリの指定）
RUN
(コマンドを実行する)
pythonのフラスクモジュールをインストールする
CMD
（実行時に動作するコマンドを書く）
フラスクを起動している。