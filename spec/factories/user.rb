FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Interner.email }
    photo_url { Faker::Placeholdit.image }
    is_admin { Faker::Boolean.boolean }
  end
end
