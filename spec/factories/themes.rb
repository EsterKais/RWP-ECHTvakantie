FactoryGirl.define do
  factory :theme do
    name          { Faker::Pokemon.name }
    description   { Faker::Lorem.sentence(5) }
    style         { Faker::Pokemon.name }
  end
end
