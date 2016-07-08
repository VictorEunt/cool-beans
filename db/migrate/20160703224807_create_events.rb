class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :first_event
      t.text :first_event_description
      t.string :second_event
      t.text :second_event_description

      t.timestamps
    end
  end
end
