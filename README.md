# [Laravel commands](https://github.com/hirac1220/laravel-cmd.git) for cloud9の使い方

## 環境構築
1. 作成したcloud9 project直下にlaravel-cmdをドラッグ&ドロップ or git clone
```
$ git clone https://github.com/hirac1220/laravel-cmd.git
```
2. フォルダへ移動
```
$ cd laravel-cmd/
```
3. env-example.shにアプリケーション名をセット(デフォルトはAPP=cms)  

4. PHP/MySQLなど更新
```
$ make update
```
5. env.shで指定したAPPフォルダへlaravel version5.5インストール
```
$ make install-v5.5
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

## カスタマイズ
1. DB tableの作成(事前にenv-example.shにファイル名とテーブル名をセット)
```
$ make create-table
```
2. 作成したテーブルファイルを更新後migrate
```
$ make migrate
```
3. モデルの作成
```
$ make model(事前にenv-example.shにモデル名をセット)
```
4. 認証の追加
```
$ make auth
```

5. debuggerインストール
```
$ make debugger
```

## 参考資料
[山崎大助著：はじめてのLaravel 5.5入門 MAMP環境で学ぶ（サーバーアップロード手順あり）](https://www.amazon.co.jp/%E3%81%AF%E3%81%98%E3%82%81%E3%81%A6%E3%81%AELaravel-5-6%E5%85%A5%E9%96%80%EF%BC%88%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E3%82%A2%E3%83%83%E3%83%97%E3%83%AD%E3%83%BC%E3%83%89%E6%89%8B%E9%A0%86%E3%81%82%E3%82%8A%EF%BC%89-%E5%B1%B1%E5%B4%8E-%E5%A4%A7%E5%8A%A9-ebook/dp/B06XR2LRZK?ref_=fsclp_pl_dp_3)