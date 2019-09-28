FactoryBot.define do
  factory :provider do
    name { Faker::Company.name }
    website { Faker::Internet.url }
  end
end