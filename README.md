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
build:<br>
（何を設計図にしてコンテナを作るか）<br>
今回の場合は　.　なのでこのディレクトリのDockerfileを設計図にする<br>

environment:<br>
（環境変数を設定する）<br>
調べると必要な変数が分かる？(らしい)<br>

ports:<br>
（公開するポートの設定）<br>
コンテナの5000番を8000番のポートで公開する。<br>

volumes:<br>
（保存しておくデータを指定する）<br>
今回は変更できるようにバインドマウント方式で指定<br>

``` Dockerfile
FROM python:3.10
WORKDIR /usr/src/app
RUN pip install flask==2.3.3
CMD ["flask", "run", "--host=0.0.0.0"]
```
FROM<br>
（設計図になるイメージの指定）<br>
Docker Hubからpythonのイメージを指定<br>

WORKDIR<br>
（作業ディレクトリの指定）<br>

RUN<br>
(コマンドを実行する)<br>
pythonのフラスクモジュールをインストールする<br>

CMD<br>
（実行時に動作するコマンドを書く）<br>
フラスクを起動している。<br>
