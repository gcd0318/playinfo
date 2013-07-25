json.array!(@people) do |person|
  json.extract! person, :name, :info, :gender, :username, :password
  json.url person_url(person, format: :json)
end
