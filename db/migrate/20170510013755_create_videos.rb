class CreateVideos < ActiveRecord::Migration[5.1]
    def change
    create_table :videos do |t|
      t.string :name
      t.attachment :video_file
      t.attachment :mp4_file
      t.attachment :webm_file
      t.attachment :ogg_file
      t.attachment :thumbnail
      t.boolean :published
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false

      # Set initial number of likes to zero
      t.integer :likes, default: 0
    end
  end
end
