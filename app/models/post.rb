class Post < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments
  validates :body, :title, :presence => true
end
