class Task < ApplicationRecord
  belongs_to :user

  after_create :add_action_log
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
    @task_log = ActionLog.where(["target_id = ? and action_class_id = ?", self.id, 2]);

    if @task_log.delete_all
      return true
    else
      raise ActiveRecord::Rollback
      return false
    end
    self
  end

end
