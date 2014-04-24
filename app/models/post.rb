class Post < ActiveRecord::Base
  attr_accessible :body, :title, :post_categories, :category_ids

  has_many :comments, :dependent => :destroy

  has_many :post_categories
  has_many :categories, :through => :post_categories

  validates :body, :title, :post_categories, :presence => true
end
