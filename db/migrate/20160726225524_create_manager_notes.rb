class CreateManagerNotes < ActiveRecord::Migration
  def change
    create_table :manager_notes do |t|
      t.string :subject
      t.text :note

      t.timestamps
    end
  end
end
