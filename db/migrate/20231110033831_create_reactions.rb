class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      # ==========ここから追加する==========
      t.references :to_user, null: false, foreign_key: { to_table: :users }
      t.references :from_user, null: false, foreign_key: { to_table: :users }
      t.integer :status, null: false
      # ==========ここまで追加する==========
      t.timestamps
    end
  end
end
