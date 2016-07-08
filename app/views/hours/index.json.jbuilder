json.array!(@hours) do |hour|
  json.extract! hour, :id, :name, :message, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :note
  json.url hour_url(hour, format: :json)
end
