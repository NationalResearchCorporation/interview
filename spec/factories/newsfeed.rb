FactoryBot.define do
  factory :newsfeed do
    title { Faker::Games::Zelda.location }
    content { Faker::Lorem.paragraph(sentence_count: 5) }
  end
end
