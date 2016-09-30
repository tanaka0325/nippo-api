class TaskActionSerializer < ActiveModel::Serializer
  attributes :date, :action_type, :action_class_name, :task

  def action_class_name
    'task'
  end

  def action_type
    TaskAction::ACTION_TYPE.key(object.action_type)
  end

  def task
    ActiveModelSerializers::SerializableResource.new(object.task, {})
  end

end
