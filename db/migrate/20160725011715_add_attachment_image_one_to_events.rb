class AddAttachmentImageOneToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :events, :image_one
  end
end
