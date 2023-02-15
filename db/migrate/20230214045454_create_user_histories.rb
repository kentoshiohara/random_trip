class CreateUserHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_histories do |t|
      t.references :history, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
