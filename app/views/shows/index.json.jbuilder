json.array!(@shows) do |show|
  json.extract! show, :date, :theater_id, :theater_id
  json.url show_url(show, format: :json)
end
