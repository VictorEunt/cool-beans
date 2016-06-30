class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :menu_section
      t.string :name
      t.text :description
      t.string :price
      t.string :extra_one
      t.string :extra_one_price
      t.string :extra_two
      t.string :extra_two_price
      t.string :extra_three
      t.string :extra_three_price

      t.timestamps
    end
  end
end
