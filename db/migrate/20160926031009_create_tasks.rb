class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false, default: Date.today.strftime('%Y-%m-%d')
      t.string :text, null: false
      t.integer :status, null: false, default: 1
      t.integer :priority, null: false, default: 1

      t.timestamps
    end
  end
end
