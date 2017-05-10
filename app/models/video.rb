class Video < ApplicationRecord
  belongs_to :user

  # Paper clip
  # Attachments declaration
  has_attached_file: :video_file
  has_attached_file: :mp4_file
  has_attached_file: :webm_file
  has_attached_file: :ogg_file

  # Paperclip + imagemagik to resize thumbnails
  has_attached_file: :thumbnail. styles: { medium_nr: "250x150!" }

  # Attachment validators
  validates_attachement_content_type :video_file, content_type: /\Avideo/
  validates_attachement_content_type :mp4_file, content_type: /.*/
  validates_attachement_content_type :webm_file, content_type: /.*/
  validates_attachement_content_type :ogg_file, content_type: /.*/
  
  # Check that video file is present
  validates_attachement_presence :video_file

  # Publish the video
  def publish!
    self.published = true
    save
  end

  # Like
  def like!
    self.likes += 1
    save
  end

  # Dislike
  def dislike!
    self.likes -= 1
    save
  end

  def all_formats_encoded?
    self.webm_file.path && self.mp4_file.path && self.ogg_file.path ? true:false
  end
end
