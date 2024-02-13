FactoryBot.define do
  factory :project do
    name { Faker::Lorem.word }
    viewable { Faker::Boolean.boolean }
    description { Faker::Lorem.sentence }
    accomplishments { Faker::Lorem.paragraph }
  end
end
