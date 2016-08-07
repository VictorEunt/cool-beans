class HeroImage < ActiveRecord::Base
    has_attached_file :image
    validates_attachment :image, :content_type => { :content_type => %w(application/pdf) }
end
