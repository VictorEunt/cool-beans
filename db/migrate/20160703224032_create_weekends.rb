class CreateWeekends < ActiveRecord::Migration
  def change
    create_table :weekends do |t|
      t.string :title
      t.text :description
      t.string :first_special
      t.text :first_special_description
      t.string :second_special
      t.text :second_special_description

      t.timestamps
    end
  end
end
