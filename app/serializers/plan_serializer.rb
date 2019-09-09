class PlanSerializer < ActiveModel::Serializer
	has_many :offers
  attributes :name, :offers
end
