json.array!(@specials_menus) do |specials_menu|
  json.extract! specials_menu, :id, :name, :description
  json.url specials_menu_url(specials_menu, format: :json)
end
