FactoryGirl.define do
  factory :person do
    name Faker::Name.first_name
  end
end
