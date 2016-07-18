class CreateSpecialsMenus < ActiveRecord::Migration
  def change
    create_table :specials_menus do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
