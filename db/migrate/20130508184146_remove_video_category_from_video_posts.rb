class RemoveVideoCategoryFromVideoPosts < ActiveRecord::Migration
  def up
    remove_column :video_posts, :video_category
  end
end
