class TaskActionSerializer < ActiveModel::Serializer
  attributes :date, :type, :class_name, :target, :created_at

  def class_name
    'task'
  end

  def type
    TaskAction::ACTION_TYPE.key(object.action_type)
  end

  def target
    ActiveModelSerializers::SerializableResource.new(object.task, {})
  end

end
