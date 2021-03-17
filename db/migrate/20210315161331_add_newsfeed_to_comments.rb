class AddNewsfeedToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :newsfeed, null: false, foreign_key: true
  end
end
