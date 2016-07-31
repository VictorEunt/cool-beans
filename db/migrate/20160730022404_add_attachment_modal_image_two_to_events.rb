class AddAttachmentModalImageTwoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :modal_image_two
    end
  end

  def self.down
    remove_attachment :events, :modal_image_two
  end
end
