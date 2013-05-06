class CreateVideoPosts < ActiveRecord::Migration
  def change
    create_table :video_posts do |t|
      t.string :video_category
      t.integer :user_id
      t.string :video_url
      t.string :video_description
      t.string :video_title

      t.timestamps
    end
  end
end
