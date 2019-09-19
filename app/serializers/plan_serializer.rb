class PlanSerializer < ActiveModel::Serializer
  attributes :id, :place, :adventure
  belongs_to :traveler
end
