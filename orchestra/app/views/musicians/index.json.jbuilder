json.array!(@musicians) do |musician|
  json.extract! musician, :id, :first_name, :last_name, :email, :notes, :is_active
  json.url musician_url(musician, format: :json)
end
