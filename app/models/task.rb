class Task < ApplicationRecord
  belongs_to :user

  after_save :add_action_log

  def add_action_log
    @task_log = ActionLog.new({action_id: 4, target_id: self.id})

    if @task_log.save
      return true
    else
      raise ActiveRecord::Rollback
      return false
    end
    self
  end
end
