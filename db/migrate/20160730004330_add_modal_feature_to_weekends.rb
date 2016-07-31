class AddModalFeatureToWeekends < ActiveRecord::Migration
  def change
    add_column :weekends, :first_modal, :string
    add_column :weekends, :first_modal_description, :text
    add_column :weekends, :second_modal, :string
    add_column :weekends, :second_modal_description, :text
  end
end
