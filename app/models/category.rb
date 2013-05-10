class Category < ActiveRecord::Base
  attr_accessible :category_name

  has_many :categorizations
  has_many :video_posts, :through => :categorizations
 
end
