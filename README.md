# テーブル設計

## users テーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| username           | string  | null: false              |
| email              | string  | null: false              |
| encrypted_password | string  | null: false              |


### Association

- has_many :answers
- has_many :diagnoses


## menus テーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| menu        | string     | null: false                   |
| user        | references | null: false,foreign_key: true |


### Association

- belongs_to :user
- has_one    :diagnosis


## diagnoses テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| diagnosis  | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |
| answer     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :menu














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
