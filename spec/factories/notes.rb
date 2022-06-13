FactoryBot.define do
  factory :note do
    user
    title { FFaker::Movie.title }
    content { FFaker::Lorem.paragraph }
  end
end
