class ActionLog < ApplicationRecord
  belongs_to :action
  belongs_to :action_class
end
