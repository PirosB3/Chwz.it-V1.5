class RemoveCategoryFromVideoPosts < ActiveRecord::Migration
  def up
    remove_column :video_posts, :category
  end

  def down
    add_column :video_posts, :category, :string
  end
end
