class OfferSerializer < ActiveModel::Serializer
  attributes :id, :tour_name, :about, :departs, :length, :price
  belongs_to :provider
end
