class Plan < ApplicationRecord
	belongs_to :traveler

	validates_presence_of :place
end
