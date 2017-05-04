class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :is_complete
  has_one :user
end
