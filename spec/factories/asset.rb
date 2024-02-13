FactoryBot.define do
  factory :asset do
    project
    description { Faker::Lorem.sentence }
    url { Faker::Placeholdit.image }
  end
end
