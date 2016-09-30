class CreateTaskActions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_actions do |t|
      t.references :user, foreign_key: true
      # t.references :task, foreign_key: true
      t.integer :target_id, null: false
      t.integer :action_type, null: false
      t.date :date, null: false, default: Date.today.strftime('%Y-%m-%d')

      t.timestamps
    end
  end
end
