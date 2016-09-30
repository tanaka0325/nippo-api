class TweetAction < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, foreign_key: :target_id

  ACTION_TYPE = {
    post: 1,
    delete: 2,
    publish: 3,
    unpublish: 4,
  }

end
