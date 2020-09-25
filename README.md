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

* アプリケーション名:   diagnosis-chat-app

* アプリケーション概要:  質問に答えることで健康状態を簡易的に診断できます。

* URL:               

* テスト用アカウント:    管理者  Email:  admin@gmail.com    Pass:  admin1234
                      test   Email:  test@gmail.com     Pass:  test1234

* 利用方法:            ユーザーログイン後に任意の診断メニューを選びます。診断の質問に答えることで健康状態を簡易的に診断できます。

* 目指した課題解決:     使いやすい健康診断アプリを開発し、生活習慣の改善・仕事のパフォーマンスの向上できるようにする。また、病気になる前に健康状態を改善する。

* 洗い出した要件        質問に回答して健康を診断できる機能。また、それを保存する機能。

* 実装した機能についてのGIFと説明  https://gyazo.com/8b19e2256ca891ad99df5bafba14f578

* 実装予定の機能        診断情報を記録し、カレンダーで月表示できるようにします。また、診断メニューを増やしたいと思います。

* データベース設計         https://gyazo.com/2a90715b4428731cab1d1fff23269c43

* ローカルでの動作方法:     ログイン　→　任意の診断メニューを選ぶ　→　質問に回答する
                         rails _6.0.0_

* ...