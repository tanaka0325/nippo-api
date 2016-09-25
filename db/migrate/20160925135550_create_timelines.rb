class CreateTimelines < ActiveRecord::Migration[5.0]
  def change
    create_table :timelines do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
