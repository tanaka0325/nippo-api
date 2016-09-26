class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.references :action_class, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
