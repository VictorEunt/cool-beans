json.array!(@hero_images) do |hero_image|
  json.extract! hero_image, :id, :name
  json.url hero_image_url(hero_image, format: :json)
end
