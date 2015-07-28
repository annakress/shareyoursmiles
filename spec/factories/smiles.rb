require 'faker'

FactoryGirl.define do
  factory :smile do |s|
    s.smiletext "My generated test smile"
    s.username { Faker::Name.first_name }
    s.country "Testcountry"
  end

  factory :invalid_smile, parent: :smile do |s|
    s.smiletext nil
  end
end
