json.array!(@classics) do |classic|
  json.extract! classic, :id, :title, :description, :first_classic, :first_classic_description, :second_classic, :second_classic_description, :third_classic, :third_classic_description
  json.url classic_url(classic, format: :json)
end
