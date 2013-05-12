class VideoPost < ActiveRecord::Base
  attr_accessible :video_description, :video_title, :video_url

  belongs_to :user, :class_name => 'User'
  belongs_to :category, :class_name => 'VideoCategory'

  validates :category,           presence: true
  validates :user,           presence: true
  validates :video_title,       presence: true
  validates :video_description, presence: true, length: { maximum: 140 }
  validates :video_url,         presence: true

  default_scope order: 'video_posts.created_at DESC'
end
