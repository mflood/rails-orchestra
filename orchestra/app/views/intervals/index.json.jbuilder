json.array!(@intervals) do |interval|
  json.extract! interval, :id, :name
  json.url interval_url(interval, format: :json)
end
