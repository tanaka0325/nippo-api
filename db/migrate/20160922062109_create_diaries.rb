class CreateDiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :diaries do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.date :date

      t.timestamps
    end
  end
end
