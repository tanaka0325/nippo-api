class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :text
      t.date :date
      t.integer :status
      t.integer :priority, :null => true, :default => nil

      t.timestamps
    end
  end
end
