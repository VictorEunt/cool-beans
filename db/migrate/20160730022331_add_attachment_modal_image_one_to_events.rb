class AddAttachmentModalImageOneToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :modal_image_one
    end
  end

  def self.down
    remove_attachment :events, :modal_image_one
  end
end
