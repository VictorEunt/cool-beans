class CreateClassics < ActiveRecord::Migration
  def change
    create_table :classics do |t|
      t.string :title
      t.text :description
      t.string :first_classic
      t.text :first_classic_description
      t.string :second_classic
      t.text :second_classic_description
      t.string :third_classic
      t.text :third_classic_description

      t.timestamps
    end
  end
end
