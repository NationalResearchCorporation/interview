# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Newsfeed.all.destroy_all

FactoryBot.create_list(:newsfeed, 20)

@feeds = Newsfeed.all

User.create!(name: "Fred")
@id = 0
@feeds.each do |feed|
  @id = @id + 1
  Comment.create!(body: "Fred's Comment " + @id.to_s, user_id: User.last.id, newsfeed_id: feed.id)
end

User.create!(name: "Sue")
@id = 0
@feeds.each do |feed|
  @id = @id + 1
  Comment.create!(body: "Sue's Comment " + @id.to_s, user_id: User.last.id, newsfeed_id: feed.id)
end

User.create!(name: "Bella")
@id = 0
@feeds.each do |feed|
  @id = @id + 1
  Comment.create!(body: "Bella's Comment " + @id.to_s, user_id: User.last.id, newsfeed_id: feed.id)
end

puts "Refreshed the newsfeed with 20 new items, three new users, and a comment on each feed from each user :)"
