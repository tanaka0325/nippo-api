class TweetSerializer < ActiveModel::Serializer
  attributes :id, :date, :status, :message, :created_at
end
