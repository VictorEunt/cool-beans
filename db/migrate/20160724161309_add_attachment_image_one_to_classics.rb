class AddAttachmentImageOneToClassics < ActiveRecord::Migration
  def self.up
    change_table :classics do |t|
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :classics, :image_one
  end
end
