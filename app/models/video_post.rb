class VideoPost < ActiveRecord::Base
  attr_accessible :user_id, :video_description, :video_title, :video_url

  belongs_to :user, :class_name => 'User'
  has_many :categorizations
  has_many :categories, :through => :categorizations

  validates :user_id,           presence: true
  validates :video_title,       presence: true
  validates :video_description, presence: true, length: { maximum: 140 }
  validates :video_url,         presence: true
  
  default_scope order: 'video_posts.created_at DESC'


end
