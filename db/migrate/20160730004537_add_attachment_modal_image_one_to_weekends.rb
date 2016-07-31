class AddAttachmentModalImageOneToWeekends < ActiveRecord::Migration
  def self.up
    change_table :weekends do |t|
      t.attachment :modal_image_one
    end
  end

  def self.down
    remove_attachment :weekends, :modal_image_one
  end
end
