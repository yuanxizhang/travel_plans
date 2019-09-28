class Traveler < ApplicationRecord
	has_many :plans, dependent: :destroy

	validates_presence_of :name
end
