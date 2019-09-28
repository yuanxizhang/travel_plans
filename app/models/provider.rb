class Provider < ApplicationRecord
	has_many :offers, dependent: :destroy

	validates_presence_of :name
end
