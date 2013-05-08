class AddCategoryNameToVideoCategory < ActiveRecord::Migration
  def change
    add_column :video_categories, :category_name, :string
  end
end
