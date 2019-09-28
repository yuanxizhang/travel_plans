require 'rails_helper'

RSpec.describe Provider, type: :model do
	# Association test
  it { should have_many(:offers).dependent(:destroy) }
  
  # Validation tests 
  it { should validate_presence_of(:name) }
end
