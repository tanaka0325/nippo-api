class TaskSerializer < ActiveModel::Serializer
  attributes :id, :date, :text, :status, :priority
end
