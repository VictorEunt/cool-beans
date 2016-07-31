class AddModalFeaturesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :first_modal, :string
    add_column :events, :first_modal_description, :text
    add_column :events, :second_modal, :string
    add_column :events, :second_modal_description, :text
  end
end
