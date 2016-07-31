class Event < ActiveRecord::Base
   has_attached_file :image_one, :styles => { :wide => "800x300>" }
   validates_attachment_content_type :image_one, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :image_two, :styles => { :wide => "800x300>" }
   validates_attachment_content_type :image_two, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  
   has_attached_file :modal_image_one, :styles => { :wide => "800x300>" }
   validates_attachment_content_type :modal_image_one, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :modal_image_two, :styles => { :wide => "800x300>" }
   validates_attachment_content_type :modal_image_two, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
