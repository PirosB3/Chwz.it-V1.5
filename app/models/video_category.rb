class VideoCategory < ActiveRecord::Base
  attr_accessible :category_name
  has_many :video_posts, :class_name => 'VideoPost', :foreign_key => 'category_id'
end
