class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_action
  
  STATUS = {
    public: 1,
    private: 2,
    deleted: 3,
  }
  
end
