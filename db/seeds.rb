# frozen_string_literal: true

Newsfeed.all.destroy_all
User.all.destroy_all
Comment.all.destroy_all

FactoryBot.create_list(:newsfeed, 20)

puts "Refreshed the newsfeed with 20 new items :)"
