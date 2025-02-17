FactoryBot.define do
  factory :student do
    class_book
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    surname { Faker::Name.middle_name }
    token { SecureRandom.uuid }
  end
end
