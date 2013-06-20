class Photo < ActiveRecord::Base
  attr_accessible :image, :name, :image_processing
  mount_uploader :image, ImageUploader
  process_in_background :image
end
