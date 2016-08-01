class CreateAboutContents < ActiveRecord::Migration
  def change
    create_table :about_contents do |t|
      t.string :name
      t.text :part_one
      t.text :part_two
      t.text :part_three
      t.text :part_four
      t.text :part_five
      t.text :part_six

      t.timestamps
    end
  end
end
