json.array!(@programs) do |program|
  json.extract! program, :id, :name, :notes
  json.url program_url(program, format: :json)
end
