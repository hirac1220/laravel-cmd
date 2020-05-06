# [Laravel commands](https://github.com/hirac1220/laravel-cmd.git) for cloud9の使い方

1. 作成したproject直下にlaravel-cmdをドラッグ&ドロップ
2. 実行権限付与  
    chmod -R 755 laravel-cmd/
3. env-example.shにアプリケーション名をセット(デフォルトはAPP=cms)
4. make updateでPHP/MySQLなど更新
5. make installでenv.shで指定したAPPフォルダへlaravelインストール
6. make apacheでapacheの起動確認
7. make startでMySQLとサーバー起動 (プレビュー画面確認してください)
8. make create-dbでMySQL DB作成、DBをリストア(db/restore.sql)