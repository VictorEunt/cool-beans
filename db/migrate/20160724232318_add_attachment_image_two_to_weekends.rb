class AddAttachmentImageTwoToWeekends < ActiveRecord::Migration
  def self.up
    change_table :weekends do |t|
      t.attachment :image_two
    end
  end

  def self.down
    remove_attachment :weekends, :image_two
  end
end
