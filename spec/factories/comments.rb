FactoryBot.define do
  factory :comment do
    body { "MyText" }
    user { nil }
    newsfeed { nil }
  end
end
