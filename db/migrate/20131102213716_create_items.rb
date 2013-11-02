class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps null: false
      t.string :description,  null: false
      t.integer :entry_id, null: false
    end
  end
end
