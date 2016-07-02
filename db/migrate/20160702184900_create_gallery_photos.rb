class CreateGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :gallery_photos do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
