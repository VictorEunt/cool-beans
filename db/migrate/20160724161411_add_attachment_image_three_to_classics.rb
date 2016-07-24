class AddAttachmentImageThreeToClassics < ActiveRecord::Migration
  def self.up
    change_table :classics do |t|
      t.attachment :image_three
    end
  end

  def self.down
    remove_attachment :classics, :image_three
  end
end
