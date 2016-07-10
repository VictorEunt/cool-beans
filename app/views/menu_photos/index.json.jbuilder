json.array!(@menu_photos) do |menu_photo|
  json.extract! menu_photo, :id, :name
  json.url menu_photo_url(menu_photo, format: :json)
end
