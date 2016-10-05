class TweetSerializer < ActiveModel::Serializer
  attributes :id, :date, :text, :status, :created_at
end
