class TweetSerializer < ActiveModel::Serializer
  attributes :id, :date, :status, :text, :created_at
end
