class TaskActionLog < ApplicationRecord
  belongs_to :task_action_type
  belongs_to :task
end
