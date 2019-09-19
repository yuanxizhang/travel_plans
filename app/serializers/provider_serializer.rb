class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :offers
  has_many :offers
end
