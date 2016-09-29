class Task < ApplicationRecord
  belongs_to :user

  after_save :add_action_log
  after_destroy :destroy_action_log

  def add_action_log
    @task_log = ActionLog.new({action_id: 4, target_id: self.id, action_class_id: 2})

    if @task_log.save
      return true
    else
      raise ActiveRecord::Rollback
      return false
    end
    self
  end

  def destroy_action_log
    @task_log = ActionLog.find_by(self.id);

    if @task_log.destory
      return true
    else
      raise ActiveRecord::Rollback
      return false
    end
    self
  end

end
