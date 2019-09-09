class PlanSerializer < ActiveModel::Serializer
	has_many :offers
  attributes :name, :created_by, :offers
end
