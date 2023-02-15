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

## user_prefectures テーブル

| Column           | Type       | Options           |
| ---------------- | ---------- | ----------------- |
| user             | references | foreign_key: true |
| prefecture_id    | t.integer  | null: false       |

### Association
- belongs_to :user
- belongs_to :prefecture
