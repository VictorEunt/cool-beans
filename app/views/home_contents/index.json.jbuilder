json.array!(@home_contents) do |home_content|
  json.extract! home_content, :id, :name
  json.url home_content_url(home_content, format: :json)
end
