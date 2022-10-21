class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :a_processarea,              null: false, default: ""
      t.string :b_utilityarea,              null: false, default: ""
      t.string :c_offsite,                  null: false, default: ""
      t.timestamps
    end
  end
end
