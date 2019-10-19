class OfferSerializer < ActiveModel::Serializer
  attributes :id, :tour_name, :about, :departs, :length, :price, :likes
  belongs_to :provider
end
