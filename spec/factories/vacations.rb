FactoryGirl.define do
  factory :vacation do
    title         { Faker::Pokemon.name }
    country       { Faker::Pokemon.name }
    region        { Faker::Pokemon.name }
    price         { Faker::Commerce.price }
    description   { Faker::Lorem.sentence(5) }
    show true
  end
end
