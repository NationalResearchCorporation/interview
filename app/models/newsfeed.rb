class Newsfeed < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content

  validates_length_of :title, maximum: 25
  validates_length_of :content, minimum: 4
end
