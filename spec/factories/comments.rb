FactoryBot.define do
  factory :comment do
    value { Faker::Quote.jack_handey }
    user { create(:user) }
  end
end
