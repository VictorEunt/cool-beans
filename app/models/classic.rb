class Classic < ActiveRecord::Base
   has_attached_file :image_one, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   validates_attachment_content_type :image_one, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :image_two, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   validates_attachment_content_type :image_two, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  
   has_attached_file :image_three, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   validates_attachment_content_type :image_three, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :modal_image_one, :styles => { :wide => "800x300<" }
   validates_attachment_content_type :modal_image_one, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :modal_image_two, :styles => { :wide => "800x300<" }
   validates_attachment_content_type :modal_image_two, :content_type => ["image/jpg", "image/jpeg", "image/png"]

   has_attached_file :modal_image_three, :styles => { :wide => "800x300<" }
   validates_attachment_content_type :modal_image_three, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
