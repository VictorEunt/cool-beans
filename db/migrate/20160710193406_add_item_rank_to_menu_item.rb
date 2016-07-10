class AddItemRankToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :item_rank, :integer
  end
end
