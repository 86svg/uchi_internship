FactoryBot.define do
  factory :class_book do
    school
    number { Faker::Number.rand(11) }
    letter { 'А' }
    school_id { instance.school.id }
    students_count { Faker::Number.rand(30) }
  end
end
