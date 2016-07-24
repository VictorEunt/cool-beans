class AddAttachmentImageTwoToClassics < ActiveRecord::Migration
  def self.up
    change_table :classics do |t|
      t.attachment :image_two
    end
  end

  def self.down
    remove_attachment :classics, :image_two
  end
end
