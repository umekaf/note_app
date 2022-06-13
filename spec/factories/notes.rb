FactoryBot.define do
  factory :note do
    user
    title { FFaker::Movie.title }
    description { FFaker::Lorem.paragraph }
  end
end
