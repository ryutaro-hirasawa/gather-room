# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false, unique:true|
|password|string|null: false, unique:true|

### Association
- has_many :posts
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :hashtags, through :hashtags_posts
- has_many :hashtags_posts
- has_many :likes

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post

## hashtagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||

### Association
- has_many :posts, through :hashtags_posts
- has_many :hashtags_posts

## hashtags_postsテーブル
|Column|Type|Options|
|------|----|-------|
|hashtag_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :hashtag