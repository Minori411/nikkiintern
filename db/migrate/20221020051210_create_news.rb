class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|

      t.string :title,              null: false, default: ""
      t.text :body              
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
