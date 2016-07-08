class CreateHomeContents < ActiveRecord::Migration
  def change
    create_table :home_contents do |t|
      t.string :name

      t.timestamps
    end
  end
end
