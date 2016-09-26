class CreateTweetActionLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :tweet_action_logs do |t|
      t.references :tweet_action_type, foreign_key: true
      t.references :tweet, foreign_key: true

      t.timestamps
    end
  end
end
