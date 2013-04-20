class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :body, :published, :title, :author, :date_published
end
