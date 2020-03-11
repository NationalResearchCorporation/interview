class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :newsfeed

  def as_json(**options)
    # unless options.has_key? :include
      options.merge!(include: [:user])
    # end
    super(options)
  end
end
