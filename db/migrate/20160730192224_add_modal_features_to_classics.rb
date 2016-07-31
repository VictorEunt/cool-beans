class AddModalFeaturesToClassics < ActiveRecord::Migration
  def change
    add_column :classics, :first_modal, :string
    add_column :classics, :first_modal_description, :text
    add_column :classics, :second_modal, :string
    add_column :classics, :second_modal_description, :text
    add_column :classics, :third_modal, :string
    add_column :classics, :third_modal_description, :text
  end
end
