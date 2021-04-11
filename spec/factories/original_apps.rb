FactoryBot.define do
  factory :original_app do
    id { Faker::Number.number(2) }
    url { Faker::Internet.url }
    image { Faker::Internet.url }
    producer { Faker::Name.name }
    app_name { Faker::Lorem.sentence }
    contents { Faker::Lorem.sentence }
    category_id { Faker::Number.number(1) }
    created_at { Faker::Date.backward(days: 365) }
    updated_at { Faker::Date.backward(days: 365) }
  end
end
