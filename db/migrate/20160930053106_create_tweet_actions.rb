class CreateTweetActions < ActiveRecord::Migration[5.0]
  def change
    create_table :tweet_actions do |t|
      t.references :user, foreign_key: true
      t.references :tweet, foreign_key: true
      t.integer :action_type
      t.date :date

      t.timestamps
    end
  end
end
