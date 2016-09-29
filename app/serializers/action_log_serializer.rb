class ActionLogSerializer < ActiveModel::Serializer
  attributes :id, :target, :created_at, :action_name, :type
  # has_one :action

  def action_name
    object.action.name
  end

  def type
    object.action_class.name
  end

  def target
    @model_name = object.action_class.name.classify
    @id = object.target_id

    ActiveModelSerializers::SerializableResource.new(@model_name.constantize.find_by_id(@id), {})
  end
end
