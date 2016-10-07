class TweetActionSerializer < ActiveModel::Serializer
  attributes :date, :type, :class_name, :target, :created_at

  def class_name
    'tweet'
  end

  def type
    TweetAction::ACTION_TYPE.key(object.action_type)
  end

  def target
    ActiveModelSerializers::SerializableResource.new(object.tweet, {})
  end

end
