class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.integer :status
      t.string :text

      t.timestamps
    end
  end
end
