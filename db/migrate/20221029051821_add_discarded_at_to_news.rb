class AddDiscardedAtToNews < ActiveRecord::Migration[7.0]
  def change
    add_column :news, :discarded_at, :datetime, precision: 6
    add_index :news, :discarded_at
  end
end
