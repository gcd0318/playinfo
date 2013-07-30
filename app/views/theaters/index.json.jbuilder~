json.array!(@theaters) do |theater|
  json.extract! theater, :mane, :address
  json.url theater_url(theater, format: :json)
end
