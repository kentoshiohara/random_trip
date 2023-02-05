class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.integer :theme_id,        null: false
      t.integer :member_id,       null: false
      t.integer :season_id,       null: false
      t.integer :prefecture_id,   null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
