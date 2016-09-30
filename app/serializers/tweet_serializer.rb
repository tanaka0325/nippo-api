class TweetSerializer < ActiveModel::Serializer
  attributes :id, :date, :text, :status
end
