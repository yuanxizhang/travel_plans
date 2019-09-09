class OfferSerializer < ActiveModel::Serializer
  attributes :offered_by, :about, :departs, :length, :price_from
  belongs_to :plans
end
