class AddCategoryToVideoPost < ActiveRecord::Migration
  def change
    add_column :video_posts, :category, :string
  end
end
