class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categorizations do |t| 
      t.integer :category_id
      t.integer :video_post_id
    end
  add_index :categorizations, [:category_id, :video_post_id]
  end
end
