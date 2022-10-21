class CreateScheduleAreaSections < ActiveRecord::Migration[7.0]
  def change
    create_table :schedule_area_sections do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true
      t.timestamps
    end
  end
end
