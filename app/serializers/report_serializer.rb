class ReportSerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :body, :status
  has_one :user
end
