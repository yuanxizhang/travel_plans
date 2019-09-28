FactoryBot.define do
  factory :offer do
    tour_name { Faker::WorldCup.group }
    about { Faker::Nation.national_sport }
    departs { Faker::Subscription.payment_term }
    length { Faker::Number.decimal_part(digits: 2)}
    price { Faker::Commerce.price }
    provider_id { Faker::Number.between(from: 1, to: 10)}
  end
end