class AddAttachmentImageTwoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image_two
    end
  end

  def self.down
    remove_attachment :events, :image_two
  end
end
