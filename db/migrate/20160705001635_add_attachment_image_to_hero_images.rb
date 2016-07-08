class AddAttachmentImageToHeroImages < ActiveRecord::Migration
  def self.up
    change_table :hero_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hero_images, :image
  end
end
