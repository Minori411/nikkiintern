class CreateNewsReads < ActiveRecord::Migration[7.0]
  def change
    create_table :news_reads do |t|
      t.references :user, null: false, foreign_key: true
      t.references :news, null: false, foreign_key: true
      t.boolean :complete, default: false, null: false
      t.timestamps
    end
  end
end
