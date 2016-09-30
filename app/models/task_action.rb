class TaskAction < ApplicationRecord
  belongs_to :user
  belongs_to :task

  ACTION_TYPE = {
    add: 1,
    remove: 2,
    begin: 3,
    end: 4,
    change_priority: 5,
  }

end
