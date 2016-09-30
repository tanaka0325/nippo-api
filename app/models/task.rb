class Task < ApplicationRecord
  belongs_to :user
  has_many :task_action

  STATUS = {
    not_yet: 1,
    doing: 2,
    done: 3,
  }
  PRIORITY = {
    none: 1,
    high: 2,
    middle: 3,
    low: 4,
  }

end
