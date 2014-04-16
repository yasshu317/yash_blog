class Post < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments, :dependent => :destroy
  validates :body, :title, :presence => true
end
