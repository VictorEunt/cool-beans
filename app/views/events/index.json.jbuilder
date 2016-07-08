json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :first_event, :first_event_description, :second_event, :second_event_description
  json.url event_url(event, format: :json)
end
