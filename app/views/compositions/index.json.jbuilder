json.array!(@compositions) do |composition|
  json.extract! composition, :id, :title, :composer, :arranger, :notes
  json.url composition_url(composition, format: :json)
end
