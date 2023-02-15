class CreateUserPrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :user_prefectures do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :prefecture_id,   null: false

      t.timestamps
    end
  end
end
