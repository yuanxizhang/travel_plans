require 'rails_helper'

RSpec.describe Traveler, type: :model do
	# Association test
  it { should have_many(:plans).dependent(:destroy) }
  
  # Validation tests  
  it { should validate_presence_of(:name) }
end
