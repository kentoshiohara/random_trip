# アプリケーション名
RANDOM TRIP

# アプリケーション概要
旅行のテーマを基に目的地をランダムに提案することで、旅行先の偏りを無くすことを目的としたアプリ。

# URL
https://random-trip-ksmj.onrender.com

# テスト用アカウント
- Basic認証パスワード : admin
- Basic認証ID : 0000
- メールアドレス : test@email.com
- パスワード : test0000

# 利用方法
## 旅行先をランダムで決定する
1. アンケートページから「旅行のテーマ」を含む4つの項目に回答し、提出ボタンを押す。
2. 「旅行のテーマ」に対する回答を基におすすめの旅行先が3つ表示される。
## 過去の旅行先を保存する
1. ヘッダーにある新規登録ボタンから、ユーザー情報の登録をする。
2. 登録完了後、ヘッダーにあるユーザー名をホバーすると現れる「記録」を押す。
3. 記録ページに遷移後、訪問済みの都道府県にチェックを入れて、「UPDATE」ボタンを押し、旅行先データを保存する。


# アプリケーションを作成した背景
私自身旅行が好きで国内・海外含め年に数回は旅行をしているが、いつも馴染みのある目的地を旅行先として選んでしまう傾向があります。  
訪問したことのない旅行先に行ったことが無い理由を考えた結果、その旅行先の情報を目にする機会が少ないため、  
そもそも旅行計画時に「旅行先の選択肢として入らないこと」が原因であると仮説を立てました。  
この問題を解消するために、ユーザーに旅行先をランダムで提案し、その土地の魅力も共有することで、  
ユーザーの旅行先の選択肢を増やし、目的地の偏りを無くすことができる旅行アプリケーションを開発することにしました。


# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1k_HfhNildvtE2nmj8IILHJtEignsNJj2mvZuSAlQf0Q/edit#gid=113521568)

# 実装した機能についての画像やGIGおよびその説明

- ユーザー管理機能  
  ユーザー新規登録画面
  [![Image from Gyazo](https://i.gyazo.com/ec84330972cc79f112ea36b04942af31.gif)](https://gyazo.com/ec84330972cc79f112ea36b04942af31)
  ユーザーログイン画面
  [![Image from Gyazo](https://i.gyazo.com/579c52664cd3587e4f953972dd31bd7b.gif)](https://gyazo.com/579c52664cd3587e4f953972dd31bd7b)

- 旅行先提案機能  
  選択した「旅行のテーマ」の情報を基におすすめの旅行先をランダムで3つ提案。
[![Image from Gyazo](https://i.gyazo.com/8ebb9100065d46c67ad86a8ed93e9666.gif)](https://gyazo.com/8ebb9100065d46c67ad86a8ed93e9666)

- 旅行先管理機能  
  ユーザー情報に紐づいた過去の旅行先を保存することができる。ドーナツグラフで可視化。
[![Image from Gyazo](https://i.gyazo.com/f30ca2aa378469483691c8c3bfb18cb6.gif)](https://gyazo.com/f30ca2aa378469483691c8c3bfb18cb6)

- ユーザー間でのランキング機能  
  訪問した都道府県数をユーザー間でランキング形式で表示。トップ10まで表示可能。
[![Image from Gyazo](https://i.gyazo.com/82623863ba110070a655f5cd12d99678.gif)](https://gyazo.com/82623863ba110070a655f5cd12d99678)

- レスポンシブ画面対応  
  PC、スマートフォンと異なる画面幅に対応できるように、レスポンシブデザインを実装。
  [![Image from Gyazo](https://i.gyazo.com/9657879cc74ad58cff55f6d4ec5a8262.gif)](https://gyazo.com/9657879cc74ad58cff55f6d4ec5a8262)

# 実装予定の機能
- 都道府県詳細情報を記述。
- 都道府県一覧を円グラフではなく日本地図で表現。
- ユーザーアカウントの削除機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/5e532174ced225d5e3724e9216a46c02.png)](https://gyazo.com/5e532174ced225d5e3724e9216a46c02)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/aaa0cadfd963ed4a8f1f2ca6c6fd20b3.png)](https://gyazo.com/aaa0cadfd963ed4a8f1f2ca6c6fd20b3)

# 開発環境
- フロントエンド：HTML&CSS / JavaScript
- バックエンド：Ruby / Ruby on Rails
- インフラ：Render
- テスト：RSpec
- テキストエディタ：Visual Studio Code
- タスク管理：github

# ローカルでの動作方法
以下のコマンドを順に実行  
% git clone https://github.com/kentoshiohara/random_trip.git  
% cd xxxxxx   
% bundle install  
% yarn install  

# 工夫したポイント
### 制作目的
- オリジナルアプリ制作を通じて、スクールで学んだ技術を出来る限りアウトプットする機会としました。
- また、スクールで学んでいない機能の実装にチャレンジすることで、自走力強化を図りました。

### 使用技術
- Gem "devise"  
  - ユーザー管理機能を実装する為。
- Gem "kickchart"
  - ユーザーの都道府県訪問数をドーナツグラフで表現する為に使用。
- レスポンシブデザイン  

# テーブル設計

## users テーブル

| Column                | Type   | Options                  |
| --------------------- | ------ | ------------------------ |
| name                  | string | null: false              |
| email                 | string | null: false, unique: true|
| encrypted_password    | string | null: false              |

### Association

- has_many :user_prefectures
- has_many :prefectures, through::user_prefectures

## destinations テーブル

| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| theme_id              | t.integer  | null: false       |
| member_id             | t.integer  | null: false       |
| season_id             | t.integer  | null: false       |
| prefecture_id         | t.integer  | null: false       |
| user                  | references | foreign_key: true |

### Association
- belongs_to :prefecture
- belongs_to :theme
- belongs_to :season
- belongs_to :user


## historiesテーブル
| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| name                  | t.string   | null: false       |

### Association
- has_many :user_histories
- has_many :users, through: :user_histories

## user_historiesテーブル

| Column           | Type       | Options           |
| ---------------- | ---------- | ----------------- |
| history          | references | foreign_key: true |
| user             | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :history
