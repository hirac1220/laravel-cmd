# [Laravel commands](https://github.com/hirac1220/laravel-cmd.git) for cloud9の使い方

## 環境構築
1. 作成したproject直下にlaravel-cmdをドラッグ&ドロップ or git clone
```
$ git clone https://github.com/hirac1220/laravel-cmd.git
```
2. フォルダへ実行権限付与
```
$ chmod -R 755 laravel-cmd/
```
3. env-example.shにアプリケーション名をセット(デフォルトはAPP=cms)  

4. PHP/MySQLなど更新
```
$ make update
```
5. env.shで指定したAPPフォルダへlaravelインストール
```
$ make install
```
6. apacheの起動確認
```
$ make apache
```
7. MySQLとサーバー起動 (プレビュー画面確認してください)
```
$ make start
```
8. MySQL DB作成、DBをリストア(db/restore.sql)
```
$ make create-db
```
9. phpMyAdminインストール
```
$ make phpmyadmin
```

## CRUD追加
