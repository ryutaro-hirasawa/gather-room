# Gather-Room

[](https://gyazo.com/6eb3a0990796b3a4c2c560c75f4ad085)

# 概要

Gather-Roomではあなたの自慢の部屋.家具などの写真を投稿し
他の人に閲覧してもらうことが可能なWebアプリです。
閲覧している中で、気になるユーザーがいればその人の投稿を閲覧することも可能です。

また、手軽にGoogleアカウント、Facebookアカウントでも登録可能です。

# 本番環境

https://gatherroom.herokuapp.com/（エラー解消中）

# 制作背景

1. 自分自身が、写真が好きで家具やインテリグッズに興味があるのでそれらをシェアするサービスを作りたい。
2. コロナウィルスの影響で在宅勤務が増えてきています。そのため在宅勤務向けの家具・グッズも
増えてきているので手軽にシェアしてきたい。

これらの観点からTECH-CAMPで学んだRuby on Railsを使い本アプリを作成しました。

# DEMO

# 工夫したポイント
・ログインしたユーザーでなければ写真が閲覧できない
・投稿したユーザーのみ編集・削除が可能
・退会時に、データベースらユーザーに紐付いた投稿画像も削除
・SNSアカウントでのログイン認証(ローカル環境)

# 使用技術(開発環境)

## 使用言語
HAML
CSS
Ruby

## 使用フレームワーク
Ruby on Rails

# 課題や今後実装したい機能
課題:2020/10/31時点本番環境でエラー解消中

今後実装したい機能：お気に入り機能・コメント・検索機能の実装

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false, unique:true|
|password|string|null: false, unique:true|

### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: users
