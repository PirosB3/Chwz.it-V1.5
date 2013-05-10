class CreateCategorization < ActiveRecord::Migration
  def change
    create_table :categorization do |t| 
      t.integer :category_id
      t.integer :video_post_id
    end
  end
end
