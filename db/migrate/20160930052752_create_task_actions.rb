class CreateTaskActions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_actions do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.integer :action_type
      t.date :date

      t.timestamps
    end
  end
end
