class TweetSerializer < ActiveModel::Serializer
  attributes :id, :date, :status, :message
end
