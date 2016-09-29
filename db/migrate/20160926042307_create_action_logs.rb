class CreateActionLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :action_logs do |t|
      t.references :action, foreign_key: true
      t.references :action_class, foreign_key: true
      t.integer :target_id

      t.timestamps
    end
  end
end
