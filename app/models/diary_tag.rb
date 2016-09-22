class DiaryTag < ApplicationRecord
  belongs_to :diary
  belongs_to :tag
end
