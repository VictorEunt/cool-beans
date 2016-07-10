class CreateMenuPhotos < ActiveRecord::Migration
  def change
    create_table :menu_photos do |t|
      t.string :name

      t.timestamps
    end
  end
end
