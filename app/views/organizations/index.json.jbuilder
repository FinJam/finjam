json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :description, :user_id
  json.url organization_url(organization, format: :json)
end
