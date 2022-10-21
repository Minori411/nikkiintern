class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :civil,              null: false, default: ""
      t.string :building,           null: false, default: ""
      t.string :mechanical,         null: false, default: ""
      t.string :piping,             null: false, default: ""
      t.string :erectrical,         null: false, default: ""
      t.timestamps
    end
  end
end
