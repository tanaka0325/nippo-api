class Tag < ApplicationRecord
  has_many :diary_tags, dependent: :destroy
  has_many :diary, :through => :diary_tags
end
