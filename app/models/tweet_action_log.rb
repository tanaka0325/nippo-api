class TweetActionLog < ApplicationRecord
  belongs_to :tweet_action_type
  belongs_to :tweet
end
