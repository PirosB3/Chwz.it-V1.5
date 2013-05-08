class VideoCategory < ActiveRecord::Base
  attr_accessible :category_name
  belongs_to :video_post, :class_name => 'VideoPost'

end
