class MenuPhoto < ActiveRecord::Base
   has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
