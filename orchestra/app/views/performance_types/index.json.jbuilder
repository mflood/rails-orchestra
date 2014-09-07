json.array!(@performance_types) do |performance_type|
  json.extract! performance_type, :id, :name, :notes
  json.url performance_type_url(performance_type, format: :json)
end
