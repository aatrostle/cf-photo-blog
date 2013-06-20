class RenameImagesToPhotos < ActiveRecord::Migration
  def up
    rename_table :images, :photos
  end
end
