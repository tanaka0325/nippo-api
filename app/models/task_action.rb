class TaskAction < ApplicationRecord
  belongs_to :user
  belongs_to :task, foreign_key: :target_id

  ACTION_TYPE = {
    add: 1,
    begin: 2,
    end: 3,
    change_priority: 4,
  }

end
