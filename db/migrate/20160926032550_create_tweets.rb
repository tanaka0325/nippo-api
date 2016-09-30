class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false, default: Date.today.strftime('%Y-%m-%d')
      t.integer :status, null: false, default: 1
      t.string :text, null: false

      t.timestamps
    end
  end
end
