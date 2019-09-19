class TravelerSerializer < ActiveModel::Serializer
  attributes :id, :name, :passion, :plans
  has_many :plans
end
