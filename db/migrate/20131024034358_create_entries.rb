class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.timestamps null: false
      t.integer :user_id, null: false
    end
  end
end
