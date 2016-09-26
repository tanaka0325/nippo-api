class CreateTaskActionLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :task_action_logs do |t|
      t.references :task_action_type, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
