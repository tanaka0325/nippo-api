class Tweet < ApplicationRecord
  belongs_to :user

  after_save :add_action_log

  def add_action_log
    @tweet_log = ActionLog.new({action_id: 1, target_id: self.id})

    if @tweet_log.save
      return true
    else
      raise ActiveRecord::Rollback
      return false
    end
    self
  end

end
