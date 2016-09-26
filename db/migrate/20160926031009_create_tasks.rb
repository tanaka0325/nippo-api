class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.string :text
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
