class AddAttachmentImageOneToWeekends < ActiveRecord::Migration
  def self.up
    change_table :weekends do |t|
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :weekends, :image_one
  end
end
