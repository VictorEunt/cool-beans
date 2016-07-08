json.array!(@weekends) do |weekend|
  json.extract! weekend, :id, :title, :description, :first_special, :first_special_description, :second_special, :second_special_description
  json.url weekend_url(weekend, format: :json)
end
