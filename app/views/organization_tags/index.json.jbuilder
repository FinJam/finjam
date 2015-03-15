json.array!(@organization_tags) do |organization_tag|
  json.extract! organization_tag, :id, :organization_id, :tag_id
  json.url organization_tag_url(organization_tag, format: :json)
end
