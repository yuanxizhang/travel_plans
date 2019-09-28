FactoryBot.define do
  factory :plan do
    place { Faker::Nation.capital_city }
    adventure { Faker::Nation.national_sport }
    traveler_id { Faker::Number.between(from: 1, to: 10)}
  end
end