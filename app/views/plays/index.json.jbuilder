json.array!(@plays) do |play|
  json.extract! play, :name, :story
  json.url play_url(play, format: :json)
end
