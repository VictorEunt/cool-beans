class AddAttachmentPhotoToMenuPhotos < ActiveRecord::Migration
  def self.up
    change_table :menu_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :menu_photos, :photo
  end
end
