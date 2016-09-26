class ActionSerializer < ActiveModel::Serializer
  attributes :id, :name, :type
  has_one :action_class
  
  def type
    object.action_class.name
  end
end
