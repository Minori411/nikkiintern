class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :aprocessarea,              null: false, default: ""
      t.string :butilityarea,              null: false, default: ""
      t.string :coffsite,                  null: false, default: ""
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
