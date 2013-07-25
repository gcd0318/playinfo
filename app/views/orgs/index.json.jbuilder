json.array!(@orgs) do |org|
  json.extract! org, :name, :address, :url
  json.url org_url(org, format: :json)
end
