class ActionLogSerializer < ActiveModel::Serializer
  attributes :id, :action, :target
  has_one :action

  def target
    @model_name = object.action.action_class.name.classify
    @id = object.target_id

    ActiveModelSerializers::SerializableResource.new(@model_name.constantize.find_by_id(@id), {})
  end
end
