class VideoPost < ActiveRecord::Base
  attr_accessible :user_id, :category, :video_description, :video_title, :video_url

  belongs_to :user, :class_name => 'User'
  has_and_belongs_to_many :categories

  validates :user_id,           presence: true
  validates :video_title,       presence: true
  validates :video_description, presence: true, length: { maximum: 140 }
  validates :video_url,         presence: true
  validates :category,    presence: true

  default_scope order: 'video_posts.created_at DESC'


end
