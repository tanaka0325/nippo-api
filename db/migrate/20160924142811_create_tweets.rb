class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.string :message
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end
