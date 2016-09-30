class TweetActionSerializer < ActiveModel::Serializer
  attributes :date, :action_type, :action_class_name, :tweet

  def action_class_name
    'tweet'
  end

  def action_type
    TweetAction::ACTION_TYPE.key(object.action_type)
  end

  def tweet
    ActiveModelSerializers::SerializableResource.new(object.tweet, {})
  end

end
