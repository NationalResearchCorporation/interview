class Newsfeed < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :content
  validates_length_of :content, minimum: 4

  def as_json(**options)
    unless options.has_key? :include
      options.merge!(:only => [:id, :title, :content], :include => {:comments => {:only => [:id, :body], :include => {:user => {:only => :name }}}})
    end
    super(options)
  end
end
