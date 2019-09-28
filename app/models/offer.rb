class Offer < ApplicationRecord
	belongs_to :provider

	validates_presence_of :tour_name
end
