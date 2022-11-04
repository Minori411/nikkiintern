class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false
      t.integer :target_id, null: false
      t.boolean :checked, default: false, null: false
      t.string :action
      t.timestamps
    end
    add_index :notifications, [:target_id,:action]
  end
end
