class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.string :extendedprops
      t.string :description
      t.datetime :start_time
      t.boolean :allDay, default: false, null: false
      t.string :eventColor
      t.string :color
      t.string :events
      t.references :user, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.timestamps
    end
  end
end
