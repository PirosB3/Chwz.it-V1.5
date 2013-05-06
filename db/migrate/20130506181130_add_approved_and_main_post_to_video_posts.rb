class AddApprovedAndMainPostToVideoPosts < ActiveRecord::Migration
  def change
    add_column :video_posts, :approved, :boolean
    add_column :video_posts, :main_post, :boolean
  end
end
