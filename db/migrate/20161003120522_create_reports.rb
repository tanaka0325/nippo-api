class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.string :title
      t.text :body
      t.integer :status

      t.timestamps
    end
  end
end
