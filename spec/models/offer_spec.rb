require 'rails_helper'

# Test suite for the Item model
RSpec.describe Offer, type: :model do
  # Association test
  it { should belong_to(:provider) }
  
  # Validation test  
  it { should validate_presence_of(:tour_name) }
end