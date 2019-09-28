FactoryBot.define do
  factory :traveler do
    name { Faker::Name.first_name }
    passion { Faker::Team.sport }
  end
end