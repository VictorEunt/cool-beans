json.array!(@menu_items) do |menu_item|
  json.extract! menu_item, :id, :menu_section, :name, :description, :price, :extra_one, :extra_one_price, :extra_two, :extra_two_price, :extra_three, :extra_three_price
  json.url menu_item_url(menu_item, format: :json)
end
