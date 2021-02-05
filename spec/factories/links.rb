FactoryBot.define do
  factory :link do
    title { Faker::String.random(length: 4) }
    url { Faker::Internet.url }
    identifier { Faker::String.random(length: 7) }
  end
end
