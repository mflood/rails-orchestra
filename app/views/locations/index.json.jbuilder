json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :notes
  json.url location_url(location, format: :json)
end
