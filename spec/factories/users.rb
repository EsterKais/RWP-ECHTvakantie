FactoryGirl.define do
  factory :user do
    name      { Faker::Pokemon.name }
    email     { Faker::Internet.email }
    password  { Faker::Internet.password }

    # admin

  end
end
