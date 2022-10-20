class AddUserstyleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :userstyle, :integer
    add_column :users, :is_deleted, :boolean, default: false, null: false
  end
end
