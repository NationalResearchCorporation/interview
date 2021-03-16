# frozen_string_literal: true

FactoryBot.define do
  factory :newsfeed do
    title { Faker::Games::Zelda.location }
    content { Faker::Lorem.paragraph(sentence_count: 5) }

    after(:create) do |newsfeed, _|
      create_list(:comment, 5, newsfeed: newsfeed)
    end
  end
end
