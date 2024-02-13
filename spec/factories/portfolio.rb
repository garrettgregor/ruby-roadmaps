FactoryBot.define do
  factory :portfolio do
    user
    name { Faker::Lorem.word }
    is_view { Faker::Boolean.boolean }
  end
end
