require 'rails_helper'

# Test suite for the Plan model
RSpec.describe Plan, type: :model do
  # Association test
  it { should belong_to(:traveler) }

  # Validation test
  it { should validate_presence_of(:place) }
end