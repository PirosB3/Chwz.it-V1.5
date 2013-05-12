class MakeCategoryRelational < ActiveRecord::Migration
  def up
      remove_column :video_posts, :category
      add_column :video_posts, :category_id, :integer
  end
end
