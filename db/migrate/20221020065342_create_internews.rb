class CreateInternews < ActiveRecord::Migration[7.0]
  def change
    create_table :internews do |t|
      t.references :news, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
