FactoryGirl.define do
  factory :user do

    email     { Faker::Internet.email }
    password  { Faker::Internet.password }

    # admin

  end
end
