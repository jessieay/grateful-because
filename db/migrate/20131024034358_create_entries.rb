class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.timestamps null: false
      t.integer :user_id, null: false
    end

    add_index :entries, :user_id
  end
end
