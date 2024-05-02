# Docker_test
Docker勉強用リポジトリ

## Dockerの基本コマンド

Dockerの初回起動
```` console.cmd
docker compose up --build
````
"--build"オプションを付けることによりDockerイメージからコンテナを作成する。

二回目以降の起動
```` console.cmd
docker compose down
````
コンテナの停止と削除を同時に行う。