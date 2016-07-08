class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.string :name
      t.text :message
      t.string :sunday
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :note

      t.timestamps
    end
  end
end
