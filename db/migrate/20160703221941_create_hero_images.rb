class CreateHeroImages < ActiveRecord::Migration
  def change
    create_table :hero_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
